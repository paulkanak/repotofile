# 30-Day AI Foundations Plan (No Coding) — 1 Hour/Day

**Goal:** Build a solid conceptual foundation in AI/GenAI — LLMs, prompting, RAG, agents, MCP, evals, and LLMOps — so that your current hands-on work with **AWS Bedrock, AgentCore, RAG, and Knowledge Bases** actually makes sense at the "why" level, not just the "how" level.

**Format:** Pure theory/concepts. No coding, no notebooks. Just watching, reading, reflecting, and explaining — 1 hour/day.

## The Learning Loop

Every study day follows the same four-step loop:

1. **Learn (30–40 min):** Watch/read the assigned resource.
2. **Translate (10 min):** Explain the concept in your own words.
3. **AWS Map (5–10 min):** Ask where this concept appears in Bedrock/AgentCore.
4. **Recall (5 min):** Close the material and answer the day's checkpoint from memory.

> **Rule:** If a lecture turns into a coding lab, skip the implementation and continue to the next conceptual lecture.

### What "good progress" looks like

Do not measure progress by hours of video watched. Measure it by whether you can explain a concept **without notes** and connect it to an actual AI architecture.

---

## Week 1: Foundations — AI, Neural Networks, LLMs, Tokens & Prompting

| Day | Topic | Resource | Time / Output |
|---|---|---|---|
| 1 | AI vs ML vs Deep Learning vs GenAI — how they relate | 3Blue1Brown – Neural Networks | 35 min watch + 25 min notes |
| 2 | How neural networks learn: weights, loss, gradient descent, backpropagation | 3Blue1Brown Neural Networks playlist | 45 min watch + 15 min recall |
| 3 | What is an LLM, really? Training, inference, next-token prediction | Andrej Karpathy – **Intro to Large Language Models** | 45 min watch + 15 min explanation |
| 4 | Tokens & tokenization | Udemy – **LLM Engineering: Master AI, Large Language Models & Agents — Ed Donner** | 40 min course + 20 min exercises |
| 5 | Context windows, model capabilities, frontier vs open models | Same Udemy course | 40 min course + 20 min mental model |
| 6 | Prompt engineering: zero-shot, few-shot, role/instruction prompting, CoT, constraints | Same Udemy course + Anthropic Prompt Engineering overview | 40 min learn + 20 min prompt analysis |
| 7 | **Review + Milestone** | Your notes | 1-page summary + 10-question self-test |

### Week 1 Milestone

Without notes, explain:

- AI vs ML vs deep learning vs GenAI
- what a neural network learns
- what an LLM does during inference
- what a token is
- why context windows matter
- zero-shot vs few-shot prompting

You should be able to answer:

> **"What happens from the moment I send text to an LLM until I receive the response?"**

---

## Week 2: Embeddings, Vector Search, RAG & Knowledge Bases

| Day | Topic | Resource | Time / Output |
|---|---|---|---|
| 8 | Embeddings — what they represent and why they matter | Udemy – **LLM Engineering**, RAG/embeddings lectures | 40 min learn + 20 min explain |
| 9 | Similarity search — cosine similarity, semantic search, nearest neighbors | Same Udemy course + Vector Databases course | 40 min learn + 20 min diagram |
| 10 | Vector databases — vector index, metadata, filtering, hybrid search | Same Udemy course | 40 min learn + 20 min comparison |
| 11 | RAG — why retrieval exists and RAG vs fine-tuning | Same Udemy course | 40 min learn + 20 min decision examples |
| 12 | Full RAG pipeline — parsing, chunking, embedding, retrieval, reranking, generation | Same Udemy course + DeepLearning.AI Vector Databases | 40 min learn + 20 min architecture |
| 13 | **AWS-specific:** Amazon Bedrock Knowledge Bases — how it implements RAG | AWS – **How Amazon Bedrock Knowledge Bases work** | 45 min docs + 15 min AWS mapping |
| 14 | **Review + Retrieval Thinking** | Your notes + AWS KB docs | Map every RAG stage to KB + identify likely failure points |

### Week 2 Milestone

You should be able to draw and explain:

```text
Documents
   ↓
Parse
   ↓
Chunk
   ↓
Embed
   ↓
Vector Index
   ↓
Query
   ↓
Retrieve
   ↓
Rerank / Filter
   ↓
Context
   ↓
LLM
   ↓
Grounded Answer
```

Then answer:

> **"If my RAG answer is bad, which stage could be responsible?"**

Think about:

- poor parsing
- bad chunks
- weak embeddings
- poor retrieval
- insufficient top-k
- bad reranking
- irrelevant context
- model generation

This turns RAG from a service you use into a system you understand.

---

## Week 3: Agents, Tool Calling, Memory, MCP & AgentCore

| Day | Topic | Resource | Time / Output |
|---|---|---|---|
| 15 | Assistant vs workflow vs agent — what actually makes a system agentic | AI Explained – AI Agents + Udemy Agentic course | 40 min learn + 20 min comparison |
| 16 | Tool/function calling — schemas, arguments, execution, results, failures | Anthropic Tool Use overview | 40 min read + 20 min sequence diagram |
| 17 | Agent loops — planning, action, observation, iteration | Udemy – **Complete Agentic AI Engineering Course — Ed Donner** | 40 min course + 20 min explanation |
| 18 | Multi-agent systems — orchestration, handoffs, specialization, trade-offs | Same Udemy course | 40 min learn + 20 min architecture |
| 19 | MCP — why standardized tool/context access exists | Same course's MCP module or Anthropic MCP material | 40 min learn + 20 min explain |
| 20 | Agent memory — context vs short-term vs long-term memory | Agent memory conceptual material + AgentCore Memory docs | 40 min learn + 20 min AWS map |
| 21 | **AWS-specific:** Amazon Bedrock AgentCore — Runtime, Memory, Gateway, Identity, Registry and related capabilities | AWS – **AgentCore overview** | 45 min docs + 15 min architecture |

### Week 3 Milestone

Explain this loop:

```text
Goal
 ↓
Agent / LLM
 ↓
Decide
 ↓
Tool / RAG / Memory
 ↓
Observe result
 ↓
Decide again
 ↓
Final answer
```

Then map:

```text
Agent runtime  → AgentCore Runtime
Memory         → AgentCore Memory
Tools / APIs   → AgentCore Gateway
MCP            → AgentCore Gateway / MCP
Evaluation     → AgentCore Evaluations
Observability  → AgentCore Observability
```

You should be able to answer:

> **"Why would I use an agent instead of a deterministic workflow?"**

and also:

> **"When should I NOT use an agent?"**

---

## Week 4: Fine-Tuning, Guardrails, Structured Outputs, Evals, LLMOps & Consolidation

| Day | Topic | Resource | Time / Output |
|---|---|---|---|
| 22 | Fine-tuning vs RAG — behavior vs knowledge | Udemy – **LLM Engineering**, fine-tuning/QLoRA conceptual lectures | 40 min learn + 20 min decision matrix |
| 23 | Guardrails & AI security — hallucinations, prompt injection, jailbreaks, PII, unsafe tool use | AWS – Bedrock Guardrails overview | 40 min docs + 20 min threat scenarios |
| 24 | Evaluation — what makes an AI system "good"? | Udemy – **Evaluation for LLM Applications** / DeepLearning.AI evaluation material | 40 min learn + 20 min metric examples |
| 25 | LLMOps — versioning, deployment, monitoring, cost, latency, regression | LLMOps conceptual material | 40 min learn + 20 min production checklist |
| 26 | Observability — traces, tool calls, latency, failures, debugging | LangSmith observability concepts + AgentCore Observability docs | 40 min learn + 20 min trace walkthrough |
| 27 | Structured outputs & validation — making model output usable by software | Anthropic structured-output material | 40 min learn + 20 min examples |
| 28 | **AWS-specific:** Connect the stack — Bedrock models, Guardrails, Knowledge Bases, AgentCore, evaluation and observability | AWS Bedrock / AgentCore documentation | Draw one end-to-end architecture |
| 29 | **Consolidation Day:** Build your complete AI mental map | Your notes | 1-page architecture + 10-minute verbal explanation |
| 30 | **Final Assessment:** 35-question self-test + explain one end-to-end AWS AI architecture | Your notes | No notes for first attempt |

### Week 4 Milestone

You should be able to explain:

```text
Application
   ↓
Guardrails / Policy
   ↓
LLM / Agent
   ↓
RAG / Knowledge Base
   ↓
Tools / Gateway
   ↓
Memory
   ↓
Response
   ↓
Evaluation
   ↓
Observability
   ↓
Monitoring
   ↓
Improvement
```

---

# Final Assessment — Day 30

Answer these without notes.

### Foundations

1. What is AI?
2. How are ML, deep learning and GenAI related?
3. How does a neural network learn?
4. What is an LLM?
5. What happens during inference?

### LLMs

6. What is a token?
7. What is tokenization?
8. What is a context window?
9. What is an embedding?
10. What is a transformer?
11. What is attention?
12. Why can generation be probabilistic?

### Prompting

13. What is zero-shot prompting?
14. What is few-shot prompting?
15. What belongs in a strong prompt?
16. What is prompt injection?

### RAG

17. What is RAG?
18. Why do we chunk documents?
19. What is an embedding model?
20. What is a vector index?
21. What is retrieval?
22. What is reranking?
23. What can make RAG fail?
24. When would you choose RAG over fine-tuning?

### Agents

25. What makes a system an agent?
26. Agent vs workflow?
27. What is tool calling?
28. What is memory?
29. What does MCP solve?
30. What is a multi-agent system?

### Production

31. What are guardrails?
32. What is evaluation?
33. What is LLMOps?
34. What is observability?
35. Why are structured outputs important?

### AWS translation

Finally, explain this without notes:

> **"I need to build an AWS application where an LLM answers questions over private documents, can call external tools, remembers relevant information, is protected against unsafe behavior, and can be evaluated and monitored in production. How would I map the concepts I learned to Bedrock and AgentCore?"**

If you can answer that clearly, the month has succeeded.

---

## Why This Version Is Better

This plan keeps the strongest parts of the original plan while incorporating several useful ideas from the comparison plan:

- **More deliberate progression:** neural-network intuition → LLMs → tokens/context → prompting → embeddings → RAG → agents → production.
- **Review/milestone days:** every week ends with recall and explanation rather than passive video consumption.
- **Explicit failure analysis:** the RAG week now asks not only "how does RAG work?" but also "which stage could cause a bad answer?"
- **Agent decision-making:** agent vs workflow and "when NOT to use an agent" are explicitly included.
- **AWS translation throughout:** the plan does not postpone AWS mapping until the end.
- **Production completeness:** structured outputs, guardrails, evaluation, observability and LLMOps are all retained.
- **Final architecture question:** Day 30 tests whether you can translate theory into an AWS architecture rather than simply define terms.

## Notes
- **Udemy vs YouTube:** Since you have a Udemy subscription, most of Weeks 1–4 (Days 4–6, 8–12, 17–19, 22) now point to two well-established, highly-rated Udemy courses instead of scattered YouTube videos:
  - **"LLM Engineering: Master AI, Large Language Models & Agents" by Ed Donner** (also sold as "AI Engineer Core Track") — 4.7★, 20,000+ ratings. Covers LLM fundamentals, tokens, RAG, fine-tuning/QLoRA.
  - **"The Complete Agentic AI Engineering Course (2025)" by Ed Donner** — covers agent patterns, multi-agent orchestration, and (depending on updates) MCP.
  - For these, **watch only the concept/explanation lectures and skip the hands-on coding labs** — you can jump straight to the next topic once a lecture turns into "now let's write the code."
- **Where YouTube stays:** Days 1–3 (neural network intuition and "what is an LLM") keep 3Blue1Brown and Andrej Karpathy — these are visual, math-intuition explainers that no Udemy course matches, so no substitution needed there.
- Days marked **AWS-specific** are the highest-leverage days for you personally — they connect textbook concepts directly to tools you use at work.
- Udemy course catalogs/section numbering shift over time — if a "Week 5" or "Week 1" reference doesn't match exactly, use the course's table of contents to find the equivalent topic (e.g., search for "RAG" or "tokenization" within the course curriculum).
