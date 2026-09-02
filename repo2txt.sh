#!/usr/bin/env bash
# =============================================================================
# repo2txt.sh — Convert an entire Git repo into a structured, readable .txt
#
# Usage:
#   ./repo2txt.sh [OPTIONS] <repo_path>
#
# Options:
#   -d <name>    Skip directory name(s)   (repeatable)
#   -f <name>    Skip exact file name(s)  (repeatable)
#   -e <ext>     Skip file extension(s)   (repeatable, with or without leading dot)
#   -s <kb>      Max file size in KB      (default: 500)
#   -n           Dry-run: print skip list and file count, no output written
#   -h           Show this help
#
# Examples:
#   ./repo2txt.sh /repos/my-backstage
#   ./repo2txt.sh -d tests -d docs -e md -f .env /repos/my-backstage
#   ./repo2txt.sh -e yaml -e json -s 200 /repos/my-backstage
#   ./repo2txt.sh -n /repos/my-backstage
# =============================================================================

set -euo pipefail

# ─── Colour helpers ──────────────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
CYAN='\033[0;36m'; BOLD='\033[1m'; RESET='\033[0m'
info()  { echo -e "${CYAN}[INFO]${RESET}  $*"; }
ok()    { echo -e "${GREEN}[OK]${RESET}    $*"; }
warn()  { echo -e "${YELLOW}[WARN]${RESET}  $*"; }
err()   { echo -e "${RED}[ERROR]${RESET} $*" >&2; }

# ─── Usage ───────────────────────────────────────────────────────────────────
usage() {
  sed -n '3,20p' "$0" | sed 's/^# \{0,1\}//'
  exit 1
}

# ─── Built-in defaults (always applied) ──────────────────────────────────────
DEFAULT_SKIP_DIRS=(
  ".git" "node_modules" ".terraform" "__pycache__" ".pytest_cache"
  "dist" "build" ".next" "venv" ".venv" "vendor" "coverage" ".cache"
)

DEFAULT_SKIP_EXTENSIONS=(
  ".png" ".jpg" ".jpeg" ".gif" ".svg" ".ico" ".webp"
  ".zip" ".tar" ".gz" ".tgz" ".bz2" ".xz" ".7z" ".rar"
  ".exe" ".dll" ".so" ".dylib" ".bin" ".obj"
  ".lock" ".pyc" ".pyo" ".class" ".o" ".a"
  ".db" ".sqlite" ".sqlite3"
  ".woff" ".woff2" ".ttf" ".otf" ".eot"
)

# ─── User-supplied skip lists (populated by flags) ───────────────────────────
USER_SKIP_DIRS=()
USER_SKIP_FILES=()
USER_SKIP_EXTENSIONS=()
MAX_FILE_SIZE_KB=500
DRY_RUN=false

# ─── Parse flags ─────────────────────────────────────────────────────────────
while getopts ":d:f:e:s:nh" opt; do
  case $opt in
    d) USER_SKIP_DIRS+=("$OPTARG") ;;
    f) USER_SKIP_FILES+=("$OPTARG") ;;
    e)
      ext="$OPTARG"
      [[ "$ext" != .* ]] && ext=".${ext}"
      USER_SKIP_EXTENSIONS+=("${ext,,}")
      ;;
    s) MAX_FILE_SIZE_KB="$OPTARG" ;;
    n) DRY_RUN=true ;;
    h) usage ;;
    :) err "Option -$OPTARG requires an argument."; usage ;;
    \?) err "Unknown option: -$OPTARG"; usage ;;
  esac
done
shift $(( OPTIND - 1 ))

# ─── Positional: repo path ────────────────────────────────────────────────────
[[ $# -lt 1 ]] && { err "No repo path supplied."; usage; }

REPO_PATH="${1%/}"
[[ ! -d "$REPO_PATH" ]] && { err "Directory not found: $REPO_PATH"; exit 1; }

REPO_NAME="$(basename "$REPO_PATH")"
TIMESTAMP="$(date "+%d_%b_%Y_%H_%M" | tr "[:upper:]" "[:lower:]")"
OUTPUT_FILE="${PWD}/${REPO_NAME}_${TIMESTAMP}.txt"

# ─── Merge default + user lists ───────────────────────────────────────────────
SKIP_DIRS=( "${DEFAULT_SKIP_DIRS[@]}" "${USER_SKIP_DIRS[@]}" )
SKIP_EXTENSIONS=( "${DEFAULT_SKIP_EXTENSIONS[@]}" "${USER_SKIP_EXTENSIONS[@]}" )

# ─── Print effective skip configuration ──────────────────────────────────────
print_skip_config() {
  echo -e "\n${BOLD}── Effective Skip Configuration ─────────────────────────${RESET}"

  echo -e "${CYAN}  Directories (${#SKIP_DIRS[@]}):${RESET}"
  for d in "${SKIP_DIRS[@]}"; do printf "    • %s\n" "$d"; done

  echo -e "${CYAN}  Exact file names (${#USER_SKIP_FILES[@]}):${RESET}"
  if [[ ${#USER_SKIP_FILES[@]} -eq 0 ]]; then
    echo "    (none)"
  else
    for f in "${USER_SKIP_FILES[@]}"; do printf "    • %s\n" "$f"; done
  fi

  echo -e "${CYAN}  Extensions (${#SKIP_EXTENSIONS[@]}):${RESET}"
  for e in "${SKIP_EXTENSIONS[@]}"; do printf "    • %s\n" "$e"; done

  echo -e "${BOLD}─────────────────────────────────────────────────────────${RESET}\n"
}

# ─── Skip predicates ─────────────────────────────────────────────────────────
should_skip_dir() {
  local rel_path="$1"
  local base; base="$(basename "$rel_path")"
  for pattern in "${SKIP_DIRS[@]}"; do
    [[ "$base" == "$pattern" || "$rel_path" == *"/$pattern"* || "$rel_path" == "$pattern"* ]] && return 0
  done
  return 1
}

should_skip_file() {
  local filepath="$1"
  local filename; filename="$(basename "$filepath")"

  # 1. Exact filename match (user-supplied)
  for skip_name in "${USER_SKIP_FILES[@]}"; do
    [[ "$filename" == "$skip_name" ]] && return 0
  done

  # 2. Extension match
  local ext=".${filename##*.}"
  ext="${ext,,}"
  for skip_ext in "${SKIP_EXTENSIONS[@]}"; do
    [[ "$ext" == "$skip_ext" ]] && return 0
  done

  # 3. Binary heuristic (null bytes in first 8 KB)
  if LC_ALL=C grep -qP '\x00' <(head -c 8192 "$filepath" 2>/dev/null) 2>/dev/null; then
    return 0
  fi

  return 1
}

# ─── Tree renderer (pure bash) ────────────────────────────────────────────────
draw_tree() {
  local dir="$1" prefix="$2" rel_base="$3"
  local entries=()
  while IFS= read -r -d '' entry; do
    entries+=("$entry")
  done < <(find "$dir" -mindepth 1 -maxdepth 1 -print0 | sort -z)

  local count="${#entries[@]}" idx=0
  for entry in "${entries[@]}"; do
    idx=$(( idx + 1 ))
    local name; name="$(basename "$entry")"
    local rel_path="${rel_base}/${name}"
    local connector="├── " child_prefix="${prefix}│   "
    [[ "$idx" -eq "$count" ]] && connector="└── " && child_prefix="${prefix}    "

    if [[ -d "$entry" ]]; then
      should_skip_dir "$rel_path" && continue
      echo "${prefix}${connector}${name}/"
      draw_tree "$entry" "$child_prefix" "$rel_path"
    else
      should_skip_file "$entry" && continue
      echo "${prefix}${connector}${name}"
    fi
  done
}

# ─── File collector ───────────────────────────────────────────────────────────
collect_files() {
  local dir="$1" rel_base="$2"
  local entries=()
  while IFS= read -r -d '' entry; do
    entries+=("$entry")
  done < <(find "$dir" -mindepth 1 -maxdepth 1 -print0 | sort -z)

  for entry in "${entries[@]}"; do
    local name; name="$(basename "$entry")"
    local rel_path="${rel_base}/${name}"
    if [[ -d "$entry" ]]; then
      should_skip_dir "$rel_path" && continue
      collect_files "$entry" "$rel_path"
    elif [[ -f "$entry" ]]; then
      should_skip_file "$entry" && continue
      echo "$entry"
    fi
  done
}

# ─── Banner ───────────────────────────────────────────────────────────────────
echo -e "${BOLD}"
echo "  ██████╗ ███████╗██████╗  ██████╗ ████████╗██╗  ██╗████████╗"
echo "  ██╔══██╗██╔════╝██╔══██╗██╔═══██╗╚══██╔══╝╚██╗██╔╝╚══██╔══╝"
echo "  ██████╔╝█████╗  ██████╔╝██║   ██║   ██║    ╚███╔╝    ██║   "
echo "  ██╔══██╗██╔══╝  ██╔═══╝ ██║   ██║   ██║    ██╔██╗    ██║   "
echo "  ██║  ██║███████╗██║     ╚██████╔╝   ██║   ██╔╝ ██╗   ██║   "
echo "  ╚═╝  ╚═╝╚══════╝╚═╝      ╚═════╝    ╚═╝   ╚═╝  ╚═╝   ╚═╝   "
echo -e "${RESET}"

info "Repo path   : ${BOLD}${REPO_PATH}${RESET}"
info "Repo name   : ${BOLD}${REPO_NAME}${RESET}"
info "Output file : ${BOLD}${OUTPUT_FILE}${RESET}"

$DRY_RUN && warn "DRY-RUN mode — no output file will be written."

print_skip_config

# ─── Dry-run ─────────────────────────────────────────────────────────────────
if $DRY_RUN; then
  info "Scanning repo (dry-run) …"
  mapfile -t FILES < <(collect_files "$REPO_PATH" "")
  warn "Files that WOULD be included: ${BOLD}${#FILES[@]}${RESET}"
  echo
  for f in "${FILES[@]}"; do
    echo "  ${f#"${REPO_PATH}/"}"
  done
  echo
  ok "Dry-run complete. Re-run without -n to generate output."
  exit 0
fi

# ─── Main output generation ───────────────────────────────────────────────────
> "$OUTPUT_FILE"

{
  echo "========================================================"
  echo "  REPO  : ${REPO_NAME}"
  echo "  DATE  : $(date '+%Y-%m-%d %H:%M:%S %Z')"
  echo "========================================================"
  echo "  SKIPPED DIRS       : ${SKIP_DIRS[*]}"
  echo "  SKIPPED FILES      : ${USER_SKIP_FILES[*]:-none}"
  echo "  SKIPPED EXTENSIONS : ${SKIP_EXTENSIONS[*]}"
  echo "========================================================"
  echo
} >> "$OUTPUT_FILE"

info "Building directory tree …"
{
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "  REPOSITORY STRUCTURE"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo
  echo "${REPO_NAME}/"
  draw_tree "$REPO_PATH" "" ""
  echo
} >> "$OUTPUT_FILE"
ok "Tree written."

info "Collecting files …"
mapfile -t FILES < <(collect_files "$REPO_PATH" "")
TOTAL="${#FILES[@]}"
info "Found ${BOLD}${TOTAL}${RESET} files to dump."
echo

{
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "  FILE CONTENTS"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo
} >> "$OUTPUT_FILE"

COUNT=0
for filepath in "${FILES[@]}"; do
  rel="${filepath#"${REPO_PATH}/"}"
  COUNT=$(( COUNT + 1 ))
  printf "\r  [%d/%d] %-70s" "$COUNT" "$TOTAL" "$rel"
  {
    echo "File-Name: ${rel}"
    echo "---"
    cat "$filepath" 2>/dev/null || echo "[binary or unreadable — skipped]"
    echo
    echo "---"
    echo
  } >> "$OUTPUT_FILE"
done
echo

{
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "  SUMMARY"
  echo "  Total files included : ${COUNT}"
  echo "  Generated            : $(date '+%Y-%m-%d %H:%M:%S %Z')"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
} >> "$OUTPUT_FILE"

echo
ok "Done!  Output → ${BOLD}${OUTPUT_FILE}${RESET}"
SIZE=$(du -sh "$OUTPUT_FILE" | cut -f1)
ok "File size   : ${BOLD}${SIZE}${RESET}"
ok "Files dumped: ${BOLD}${COUNT}${RESET}"
