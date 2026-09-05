# 30-Day AI Foundations Plan (No Coding) — 1 Hour/Day

**Goal:** Build a solid conceptual foundation in AI/GenAI — LLMs, prompting, RAG, agents, MCP, evals, and LLMOps — so that your current hands-on work with **AWS Bedrock, AgentCore, RAG, and Knowledge Bases** actually makes sense at the "why" level, not just the "how" level.

**Format:** Pure theory/concepts. No coding, no notebooks. Just watching, reading, and reflecting — 1 hour/day.

---

## Week 1: Foundations — AI, LLMs, Tokens, Prompting

| Day | Topic | Resource | Time |
|---|---|---|---|
| 1 | AI vs ML vs Deep Learning vs GenAI — how they relate | 3Blue1Brown – "But what is a neural network?" (YouTube) | 20 min watch + 40 min notes/reflection |
| 2 | How neural networks learn (gradient descent, backprop — conceptual only) | 3Blue1Brown Neural Networks playlist, ep 2–3 (YouTube) | 1 hr |
| 3 | What is an LLM, really | Andrej Karpathy – "Intro to Large Language Models" (YouTube) | 1 hr |
| 4 | Tokens & tokenization | Udemy – **"LLM Engineering: Master AI, Large Language Models & Agents" by Ed Donner** — Week 1 lectures on how LLMs/tokenizers work (watch only, skip the coding lab) | 1 hr |
| 5 | Context windows, frontier vs open-source models | Same Udemy course (Ed Donner) — Week 1 "Comparing LLMs" / context-window lectures (watch only) | 1 hr |
| 6 | Prompt engineering basics: zero-shot, few-shot, CoT | Same Udemy course (Ed Donner) — Week 1 prompting lectures + skim Anthropic's Prompt Engineering Overview docs (docs.claude.com) | 1 hr |
| 7 | **Review Day** — Recap Days 1–6; write a 1-page summary in your own words: "What is an LLM and how does it process a prompt?" | Your notes | 1 hr |

**Milestone:** You can explain, without notes, what an LLM is, what a token is, why context windows exist, and the difference between zero-shot/few-shot/CoT prompting.

---

## Week 2: Embeddings, Vector Databases & RAG

| Day | Topic | Resource | Time |
|---|---|---|---|
| 8 | What are embeddings and why they matter | Udemy – **"LLM Engineering" by Ed Donner** — Week 5 (RAG) intro lectures on embeddings (watch only, skip coding lab) | 1 hr |
| 9 | Vector similarity (cosine similarity, semantic search — conceptual) | Same Udemy course (Ed Donner) — Week 5 vector-store lectures (watch only) | 1 hr |
| 10 | Vector databases overview (Pinecone, FAISS, Chroma, OpenSearch) | Same Udemy course (Ed Donner) — Week 5 "comparing vector databases" lectures (watch only) | 1 hr |
| 11 | What is RAG and why it beats fine-tuning for most use cases | Same Udemy course (Ed Donner) — Week 5 RAG-vs-fine-tuning lectures (watch only) | 1 hr |
| 12 | RAG architecture: chunking, retrieval, re-ranking, generation | Same Udemy course (Ed Donner) — remaining Week 5 RAG-pipeline lectures (watch only, skip the coding lab) | 1 hr |
| 13 | **AWS-specific:** Bedrock Knowledge Bases — how it implements RAG under the hood | AWS docs: "Amazon Bedrock Knowledge Bases – How it works" | 1 hr |
| 14 | **Review Day** — Map what you learned Days 8–13 directly onto your Bedrock Knowledge Bases work. Write down: "Which part of Bedrock KB = chunking? Which = vector store? Which = retrieval?" | Your notes | 1 hr |

**Milestone:** You can explain embeddings, vector search, and the full RAG pipeline — and map each stage to what Bedrock Knowledge Bases does for you automatically.

---

## Week 3: Agents, Agentic AI & MCP

| Day | Topic | Resource | Time |
|---|---|---|---|
| 15 | AI Assistant vs AI Agent — what's the actual difference | AI Explained YouTube – "What are AI Agents" | 1 hr |
| 16 | Tool calling / function calling — the concept (not the code) | Anthropic docs – "Tool use overview" (docs.claude.com) | 1 hr |
| 17 | Agentic AI patterns: planning, reflection, multi-step reasoning | Udemy – **"The Complete Agentic AI Engineering Course (2025)" by Ed Donner** — foundational lectures on agent patterns (watch only, skip coding lab) | 1 hr |
| 18 | Multi-agent systems: orchestration, hand-offs | Same Udemy course (Ed Donner) — multi-agent orchestration lectures (watch only) | 1 hr |
| 19 | Model Context Protocol (MCP) — what it is and why it exists | Same Udemy course (Ed Donner) — MCP module, if present, conceptual lectures only; otherwise Anthropic's "Introducing MCP" blog post | 1 hr |
| 20 | Memory in agents: short-term (context) vs long-term (persistent) memory | Search YouTube: "AI agent memory types explained" (DeepLearning.AI or similar) | 1 hr |
| 21 | **AWS-specific:** Bedrock AgentCore — architecture, how it orchestrates agents/tools/memory | AWS docs: "Amazon Bedrock AgentCore overview" | 1 hr |

**Milestone:** You can explain what makes something an "agent" vs a chatbot, how tool calling works conceptually, what MCP solves, and how AgentCore's building blocks (runtime, memory, gateway, identity) map to these concepts.

---

## Week 4: Production, Evals, Guardrails & Consolidation

| Day | Topic | Resource | Time |
|---|---|---|---|
| 22 | Fine-tuning vs RAG — when to use which | Udemy – **"LLM Engineering" by Ed Donner** — fine-tuning/QLoRA weeks, conceptual lectures on when to fine-tune vs use RAG (watch only, skip coding lab) | 1 hr |
| 23 | Guardrails and safety in AI apps (hallucination control, content filtering) | AWS docs: "Amazon Bedrock Guardrails overview" | 1 hr |
| 24 | Evaluations (Evals) — how AI app quality is measured | DeepLearning.AI YouTube – "LLM Evaluation" short lesson | 1 hr |
| 25 | LLMOps basics: versioning, deployment, monitoring concepts | Search YouTube: "LLMOps explained" (freeCodeCamp / DeepLearning.AI) | 1 hr |
| 26 | AI Observability: tracing and logging LLM/agent calls (concept only) | LangSmith docs – "Observability concepts" (read, don't set up) | 1 hr |
| 27 | Structured outputs & data validation — why they matter for production agents | Anthropic docs – "Structured outputs" section | 1 hr |
| 28 | **AWS-specific:** How Bedrock ties it together — model access, guardrails, KBs, AgentCore, observability as one stack | AWS docs: "Amazon Bedrock – Overview" (re-read with new context) | 1 hr |
| 29 | **Consolidation Day 1:** Re-read all your notes from Weeks 1–4. Build one mental map: LLM → Prompting → RAG → Agents → MCP → Production | Your notes | 1 hr |
| 30 | **Consolidation Day 2 / Self-Test:** Explain out loud (or write) answers to: (1) What is an LLM and a token? (2) How does RAG work end-to-end? (3) What's the difference between an agent and an assistant? (4) What does MCP solve? (5) How do Bedrock KB, AgentCore, and Guardrails map to what you learned? | Your notes | 1 hr |

**Milestone:** You have a coherent mental model connecting core AI theory to the exact AWS Bedrock services you're already using — no coding required, but the fundamentals are now solid enough that Bedrock, AgentCore, and Knowledge Bases stop feeling like a black box.

---

## Notes
- **Udemy vs YouTube:** Since you have a Udemy subscription, most of Weeks 1–4 (Days 4–6, 8–12, 17–19, 22) now point to two well-established, highly-rated Udemy courses instead of scattered YouTube videos:
  - **"LLM Engineering: Master AI, Large Language Models & Agents" by Ed Donner** (also sold as "AI Engineer Core Track") — 4.7★, 20,000+ ratings. Covers LLM fundamentals, tokens, RAG, fine-tuning/QLoRA.
  - **"The Complete Agentic AI Engineering Course (2025)" by Ed Donner** — covers agent patterns, multi-agent orchestration, and (depending on updates) MCP.
  - For these, **watch only the concept/explanation lectures and skip the hands-on coding labs** — you can jump straight to the next topic once a lecture turns into "now let's write the code."
- **Where YouTube stays:** Days 1–3 (neural network intuition and "what is an LLM") keep 3Blue1Brown and Andrej Karpathy — these are visual, math-intuition explainers that no Udemy course matches, so no substitution needed there.
- Days marked **AWS-specific** are the highest-leverage days for you personally — they connect textbook concepts directly to tools you use at work.
- Udemy course catalogs/section numbering shift over time — if a "Week 5" or "Week 1" reference doesn't match exactly, use the course's table of contents to find the equivalent topic (e.g., search for "RAG" or "tokenization" within the course curriculum).
