# 30-Day AI Foundations Plan (No Coding) — v2
## 1 Hour/Day • LLMs → RAG → Agents → AWS Bedrock/AgentCore

**Goal:** Build a solid conceptual AI foundation in 30 days — LLMs, tokens, embeddings, RAG, agents, MCP, evals, guardrails, LLMOps — while continuously mapping every concept to **Amazon Bedrock / AgentCore / Knowledge Bases**, since that's what you're already using hands-on.

---

## How to use this plan every day (1 hour)

- **30–40 min** — learn from the listed resource
- **10–15 min** — write the concept in your own words (plain English, no jargon)
- **5–10 min** — explain it out loud, no notes

For every concept, ask these 5 questions — this is the actual point of the plan:
1. What is this concept?
2. Why does it exist?
3. What problem does it solve?
4. Where does it show up in a real AI app?
5. **How does this map to Bedrock or AgentCore?**

Don't learn AI in isolation and "come back to AWS later" — map each day's concept to AWS the same day.

---

## Core resources

- **Udemy — "LLM Engineering: Master AI, Large Language Models & Agents" by Ed Donner** (also listed as "AI Engineer Core Track: LLM Engineering, RAG, QLoRA, Agents"). Main structured course. Watch the conceptual sections only (LLMs, tokens, embeddings, RAG, agents, fine-tuning) — skip coding labs.
- **Udemy — "The Complete Agentic AI Engineering Course" by Ed Donner.** Conceptual sections on agent patterns, multi-agent orchestration, MCP — skip coding labs.
- **YouTube — Andrej Karpathy, "Intro to Large Language Models."** Best single explainer of next-token prediction, training vs inference.
- **YouTube — 3Blue1Brown, Neural Networks playlist.** For visual intuition on neurons/weights/gradient descent — no math mastery needed.
- **AWS docs** — Bedrock Knowledge Bases, "How Knowledge Bases work," and Bedrock AgentCore overview — read these directly for the AWS-mapping steps.
- **Optional supplementary:** DeepLearning.AI's short course "Building Applications with Vector Databases" (free/short) if you want a second angle on embeddings/RAG.

---

# WEEK 1 — AI, ML, Deep Learning & LLM Foundations

### Day 1 — AI → ML → Deep Learning → GenAI → LLM hierarchy
**Learn:** AI, ML, supervised/unsupervised/reinforcement learning, deep learning, generative AI, foundation models, LLMs.
**Mental model:** `AI → ML → Deep Learning → Generative AI → Foundation Models → LLMs`
**Checkpoint:** Is every AI system an LLM?
**Resource:** Karpathy – Intro to LLMs (YouTube) + Ed Donner Udemy course intro section

### Day 2 — Machine learning fundamentals
**Learn:** training data, features, labels, model, training, inference, loss, optimization, overfitting, generalization.
**Mental model:** `Data → Training → Model → Inference → Prediction`
**Checkpoint:** Why can a model do well on training data but badly on new data?
**Resource:** Ed Donner Udemy course (conceptual sections)

### Day 3 — Neural networks
**Learn:** neurons, weights, biases, layers, activations, forward pass, loss, gradient descent, backpropagation.
**Mental model:** `Input → Hidden Layer → Hidden Layer → Output`
**Checkpoint:** In plain English, how does a neural network learn?
**Resource:** 3Blue1Brown Neural Networks playlist (YouTube)

### Day 4 — Deep learning → why transformers happened
**Learn:** representation learning, sequence data, RNNs at a high level, their limitations, why transformers replaced them for language.
**Checkpoint:** Why were transformers such a big change for language models?
**Resource:** Ed Donner Udemy course

### Day 5 — What is an LLM?
**Learn:** next-token prediction, vocabulary, tokens, probabilities, model parameters, inference.
**Mental model:** `Prompt → Tokens → LLM → Probability distribution → Next token → Repeat → Response`
**Checkpoint:** What is an LLM actually doing when it generates text?
**Resource:** Karpathy – Intro to LLMs (YouTube)

### Day 6 — Training vs inference
**Learn:** pretraining, supervised fine-tuning, preference/post-training (high level), inference, sampling.
**Mental model (training):** `Huge dataset → predict next token → calculate error → update parameters → repeat billions of times`
**Mental model (inference):** `User prompt → tokenize → model → next-token prediction → response`
**Checkpoint:** Why doesn't inference change the model's weights?
**Resource:** Karpathy + Ed Donner Udemy course

### Day 7 — Week 1 review
Without notes, explain: AI, ML, deep learning, generative AI, foundation model, LLM, training, inference, neural network, transformer.
**Final exercise:** Explain "what happens when I send a prompt to an LLM?" in 2 minutes, out loud.

**Milestone:** You can explain an LLM's basic mechanics without notes, and you know the difference between training and inference.

---

# WEEK 2 — Tokens, Embeddings, Transformers, Attention & RAG Building Blocks

### Day 8 — Tokens & tokenization
**Learn:** token, subword tokens, input/output tokens, token count, token limits. A token is not necessarily a word.
**Exercise:** Why might "playing" tokenize differently from "play"?
**AWS mapping:** `User text → model tokenizer → input tokens → Bedrock foundation model`
**Resource:** Ed Donner Udemy course (tokenization section)

### Day 9 — Context windows
**Learn:** context window, prompt tokens, conversation history, retrieved context, tool results, output tokens.
**Mental model:** `System instructions + user prompt + conversation + RAG context + tool results → context window → LLM`
**Checkpoint:** Why can a huge RAG result actually hurt an LLM's answer?
**Resource:** Ed Donner Udemy course

### Day 10 — Embeddings
**Learn:** embedding = numerical vector capturing semantic meaning; embedding model, vector, dimensions, semantic similarity, cosine similarity (conceptual only).
**Mental model:** `Text → embedding model → vector → semantic representation`
**AWS mapping:** `Document chunk → Bedrock embedding model → embedding vector → vector index`
**Resource:** Ed Donner Udemy course (RAG/embeddings section)

### Day 11 — Vector databases & similarity search
**Learn:** vector database, vector index, nearest-neighbor search, semantic search, metadata filtering, hybrid search.
**Mental model:** `Query → query embedding → vector search → similar chunks`
**AWS mapping:** Bedrock Knowledge Bases manage ingestion, indexing, and retrieval for you.
**Resource:** Ed Donner Udemy course

### Day 12 — Transformers
**Learn:** transformer, encoder, decoder, decoder-only LLM, transformer block, positional information.
**Mental model:** `Tokens → embeddings → transformer blocks → attention + feed-forward → output probabilities`
**Checkpoint:** Why are modern LLMs almost all transformer-based?
**Resource:** Ed Donner Udemy course

### Day 13 — Attention (conceptual, no matrix math)
**Learn:** query, key, value, attention score, self-attention, multi-head attention.
**Mental model:** Attention decides which parts of the context matter most for the current token.
**Checkpoint:** Explain attention without using equations.
**Resource:** Ed Donner Udemy course + Karpathy (attention segment)

### Day 14 — Review + how an LLM actually generates a response
**Learn:** temperature, top-p, greedy decoding, deterministic vs probabilistic generation.
**Mental model:** `Prompt → tokenize → embed → transformer → logits/probabilities → sampling → next token → repeat`
**Checkpoint:** Why can the same prompt produce different answers each time?

**Milestone:** You can explain embeddings, vector search, and how an LLM turns a prompt into text — and you can map each stage onto a Bedrock request.

---

# WEEK 3 — Prompting, RAG & Knowledge Bases

### Day 15 — Prompt engineering fundamentals
**Learn:** zero-shot, few-shot, role prompting, task specification, constraints, examples, structured outputs.
**Mental model:** `Good prompt = task + context + constraints + expected output`
**Resource:** Anthropic's Prompt Engineering Overview docs (docs.claude.com) + Ed Donner Udemy course

### Day 16 — System prompts & prompt architecture
**Learn:** system instructions, user instructions, context, tool descriptions, output format, instruction hierarchy, prompt injection.
**Mental model:** `System instructions + user request + retrieved context + tool defs/results → LLM`
**AWS mapping:** How system instructions/application prompts get used when invoking Bedrock models or running agents.
**Resource:** Ed Donner Udemy course

### Day 17 — What is RAG?
**Learn:** RAG = retrieve relevant info, then hand it to the model as context instead of expecting the model to "know everything."
**Mental model:** `User question → retrieve info → add to prompt → LLM → grounded answer`
**AWS mapping:** Bedrock Knowledge Bases = a managed way to implement RAG.
**Resource:** Ed Donner Udemy course (RAG section) + AWS docs: "How Amazon Bedrock Knowledge Bases work"

### Day 18 — RAG ingestion pipeline (the offline side)
**Learn:** parsing, chunking, chunk size/overlap, metadata, embedding, vector indexing.
**Mental model:** `Documents → parse → chunk → embed → vector index`
**AWS mapping:** Knowledge Bases automate most of this pipeline for you.
**Resource:** Ed Donner Udemy course + AWS Knowledge Bases docs

### Day 19 — RAG retrieval pipeline (the runtime side)
**Learn:** retrieval, top-k, relevance, reranking, context augmentation, grounded generation.
**Mental model:** `User query → query embedding → vector search → relevant chunks → filter/rerank → context → LLM → answer`
**AWS mapping:** Bedrock Knowledge Bases support reranking and agentic retrieval as managed capabilities.
**Resource:** Ed Donner Udemy course

### Day 20 — RAG vs fine-tuning
**Learn:** RAG changes *what information* the model sees; fine-tuning changes the *model's learned behavior*.
**Use RAG when:** info changes often, private docs, need citations/grounding.
**Use fine-tuning when:** you need consistent style/behavior or domain-specific patterns baked in.
**Key question:** Am I changing the model, or changing what I feed the model?
**Resource:** Ed Donner Udemy course (fine-tuning section)

### Day 21 — Amazon Bedrock Knowledge Bases, end to end
**Learn:** data sources, ingestion, chunking, embeddings, vector storage, retrieval, reranking, metadata filtering, citations, managed vs customer-managed vector stores, agentic retrieval.
**Mental model:** `Documents → parse → chunk → embed → index → retrieve → rerank/filter → context → LLM → grounded response`
**Resource:** AWS docs — Bedrock Knowledge Bases + "How it works"

**Milestone:** You can explain the full RAG pipeline end-to-end and map every stage directly onto what Bedrock Knowledge Bases does automatically.

---

# WEEK 4 — Agents, Tools, Memory, MCP, Guardrails, Evals & LLMOps

### Day 22 — What is an AI agent?
**Learn:** the difference between an LLM, chatbot, assistant, workflow, and agent.
**Mental model:** `Goal → LLM decides → tool/RAG/memory → observe result → LLM decides again → repeat → final answer`
**Key idea:** An agent isn't "an LLM with a fancy prompt" — it's a decide → act → observe loop.
**Resource:** Ed Donner Agentic AI Udemy course

### Day 23 — Agent vs chatbot vs workflow
**Learn (comparison):**
| System | Main characteristic |
|---|---|
| Chatbot | Responds to user |
| LLM application | Uses a model to perform a task |
| Workflow | Predetermined sequence |
| Agent | Dynamically decides what to do next |
| Multi-agent system | Multiple agents collaborate |
**Exercise:** For 3 tools/apps you know, classify each as chatbot / workflow / agent.
**Resource:** Ed Donner Agentic AI Udemy course

### Day 24 — Tool / function calling
**Learn:** tool schema, tool selection, arguments, tool result, validation, permissions, failure handling.
**Mental model:** `User → LLM → decides tool needed → tool call → external system → tool result → LLM → final response`
**AWS mapping:** AgentCore Gateway can expose APIs, Lambda functions, and MCP-compatible tools to agents.
**Resource:** Anthropic's "Tool use overview" docs + Ed Donner Agentic AI Udemy course

### Day 25 — Memory
**Learn:** context (current info given to the model) vs short-term memory (session-level) vs long-term memory (persists across sessions).
**Mental model:** `Current context → short-term memory → long-term memory`
**AWS mapping:** AgentCore Memory supports both short-term and long-term memory for context-aware agents.
**Resource:** AWS AgentCore docs

### Day 26 — MCP & multi-agent systems
**Learn:** Model Context Protocol, MCP server/client, standardized tool access, agent-to-agent concepts, multi-agent orchestration.
**Mental model:** `Agent → MCP → tools/services/data`
**AWS mapping:** AgentCore Gateway can expose APIs as MCP-compatible tools and connect to existing MCP servers.
**Important:** Don't learn MCP syntax — just why it exists (a standard so agents don't need custom integration code per tool).
**Resource:** Anthropic's "Introducing MCP" blog + Ed Donner Agentic AI Udemy course

### Day 27 — Guardrails & AI security
**Learn:** harmful content, prompt injection, jailbreaks, PII, data leakage, tool misuse, hallucination risk, output validation, access control.
**AWS mapping:** Bedrock Guardrails is one layer in a larger AI safety architecture — not a complete security solution on its own.
**Resource:** AWS docs — Bedrock Guardrails overview

### Day 28 — Evaluation, LLMOps & observability
**Learn:** evaluation datasets, reference-based vs reference-free evaluation, LLM-as-a-judge, correctness/relevance/groundedness/toxicity, tool-call accuracy, task completion, regression testing; LLMOps = versioning + monitoring + evaluation + tracing + latency + cost + continuous improvement.
**Key idea:** "The model gave a good answer once" is not an evaluation strategy.
**AWS mapping:** AgentCore provides dedicated evaluation and observability capabilities for agent systems.
**Resource:** AWS AgentCore docs + LangSmith "Observability concepts" (read only)

### Day 29 — Build your complete AI → AWS mental model
Put the whole pipeline together and explain it out loud, unaided:

```
User Goal
   ↓
Prompt / Instructions
   ↓
   ├─→ RAG / Knowledge Base → retrieved context ─┐
   └─→ Tools / APIs → tool results ───────────────┤
                                                   ↓
                                            LLM / Agent
                                                   ↓
                                        Decide / Generate
                                          ↓            ↓
                                      Answer         Action → Tool → Observation → LLM again
                                                   ↓
                                             Guardrails
                                                   ↓
                                             Evaluation
                                                   ↓
                                            Observability
                                                   ↓
                                              Monitoring
                                                   ↓
                                             Improvement
```

### Day 30 — Final self-test (no notes)
**Foundations:** What is AI / ML / deep learning / generative AI / a foundation model / an LLM?
**LLMs:** What is a token, an embedding, a transformer, attention, a context window? Why is output probabilistic?
**Prompting:** Zero-shot vs few-shot? What's a system prompt? What's prompt injection?
**RAG:** What is RAG? Why chunk documents? What's a vector index? What happens during retrieval and reranking? RAG vs fine-tuning — when do you pick which?
**Agents:** What is an agent vs a workflow? What is tool calling, memory, MCP?
**Production:** What are guardrails? What is evaluation, LLMOps, observability, and why does tracing matter?

**Milestone:** You have a coherent mental model connecting core AI theory straight to the AWS Bedrock/AgentCore stack you use at work — Bedrock, Knowledge Bases, and AgentCore stop being black boxes.

---

## Glossary — AI concept → AWS mapping (your quick-reference cheat sheet)

| AI Concept | What it means | AWS / Bedrock mapping |
|---|---|---|
| Foundation Model | General-purpose pretrained model | Bedrock foundation models |
| LLM | Model specialized in language generation | Claude, Nova, Llama, etc. via Bedrock |
| Inference | Using a trained model to generate output | Bedrock model invocation |
| Token / Context Window | Unit of text processed / total info available per request | Input/output tokens; prompt + history + retrieved context + tool results |
| Embedding | Numerical semantic representation | Bedrock embedding models |
| Vector Search / RAG | Finding similar content / retrieval + generation | Knowledge Bases retrieval |
| Chunking / Vector Index | Splitting docs / storing embeddings | Knowledge Base ingestion |
| Reranking / Grounding | Reordering results by relevance / answering from evidence | Knowledge Base reranking / RAG |
| Agent / Agent Loop | System that reasons & acts via tools / decide-act-observe cycle | AgentCore |
| Tool Calling / MCP | Model requests an external action / standardized tool access | AgentCore Gateway |
| Short/Long-Term Memory | Session context / persistent info | AgentCore Memory |
| Guardrails | Safety/control layer | Bedrock Guardrails |
| Evaluation / Tracing / Monitoring | Measuring quality / inspecting execution / watching production | AgentCore Evaluations / Observability / CloudWatch |

---

## What NOT to study this month
Skip: Python fundamentals, LangChain/LlamaIndex implementation, FAISS/Chroma coding, API implementation, Docker, Kubernetes, Terraform, CI/CD, framework syntax, deployment tutorials, portfolio projects. These come later — this month is **concept → mental model → AWS mapping** only.

## What to study after these 30 days
1. **Python + AI APIs** — API calls, structured outputs, tool calling, streaming, conversation state
2. **RAG engineering** — chunking strategies, retrieval strategies, hybrid search, reranking, query transformation
3. **Agent engineering** — agent loops, tool design, planning, state, MCP, multi-agent orchestration
4. **Production AI** — evaluation, tracing, observability, security, latency, cost, deployment
5. **Projects** — personal knowledge assistant, RAG app, tool-using agent, agent + Knowledge Base, production-style agent with evals/observability

---

**One-sentence goal:** After these 30 days, you should be able to look at an AI architecture diagram and understand not just *which* AWS service is being used, but *why* it exists and *what underlying AI concept* it implements.
