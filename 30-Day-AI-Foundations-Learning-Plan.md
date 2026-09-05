# 30-Day AI Foundations Learning Plan
## 1 Hour/Day • No Coding • AI + LLM + RAG + Agents + AWS Bedrock/AgentCore

> **Goal:** Build a strong conceptual AI foundation in 30 days so that you can confidently understand and discuss LLMs, RAG, Knowledge Bases, agents, tool calling, memory, MCP, evaluation, guardrails, and production AI — while continuously connecting every concept to Amazon Bedrock and AgentCore.

---

# How to Use This Plan

### Daily time: 1 hour

Use this structure every day:

- **30–40 min:** Learn from the listed resource.
- **10–15 min:** Write your own notes in plain English.
- **5–10 min:** Explain the concept aloud without looking at notes.

### Important rule

**Do not learn AI in isolation and then come back to AWS later.**

For every concept, ask:

1. What is this concept?
2. Why does it exist?
3. What problem does it solve?
4. Where does it appear in an AI application?
5. **How does this map to Amazon Bedrock or AgentCore?**

This is the most important part of the plan because you already work with AWS AI services. The goal is to make the underlying AI concepts and the AWS terminology become one mental model.

---

# Core Resources

## Primary Udemy Course

### AI Engineer Core Track: LLM Engineering, RAG, QLoRA, Agents — Ed Donner / Ligency

https://www.udemy.com/course/llm-engineering-master-ai-and-large-language-models/

Use this as the **main structured course**. You do **not** need to complete the whole course during this month.

Focus on the conceptual sections around:

- LLMs
- Transformers
- tokens
- embeddings
- prompting
- RAG
- agents
- tool use
- fine-tuning
- evaluation
- production concepts

Skip implementation-heavy sections for now.

---

## YouTube — Andrej Karpathy

### Intro to Large Language Models

https://www.youtube.com/watch?v=zjkBMFhNj_g

Use this during Week 1 to build an intuitive understanding of how LLMs work.

Focus on:

- next-token prediction
- inference
- training
- pretraining
- fine-tuning
- tool use
- multimodality
- prompt injection/security

---

## YouTube — 3Blue1Brown

### Neural Networks

https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr

Use this selectively for neural-network intuition.

You do **not** need mathematical mastery.

Focus on:

- neurons
- layers
- weights
- activations
- gradient descent
- backpropagation
- why neural networks can learn representations

---

## DeepLearning.AI — Vector Databases

### Building Applications with Vector Databases

https://www.deeplearning.ai/courses/building-applications-vector-databases/

Use this as supplementary material for embeddings, vector search, and RAG.

---

## DeepLearning.AI — Agentic AI

### AI Agentic Design Patterns with AutoGen

https://www.deeplearning.ai/courses/ai-agentic-design-patterns-with-autogen/

Use this for conceptual understanding of agent patterns.

You do not need to implement AutoGen.

---

## Udemy — LLM Evaluation

### Evaluation for LLM Applications

https://www.udemy.com/course/evaluation-for-llm-applications/

Use this during the evaluation/LLMOps section.

---

## AWS Documentation

### Amazon Bedrock Knowledge Bases

https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html

### How Amazon Bedrock Knowledge Bases Work

https://docs.aws.amazon.com/bedrock/latest/userguide/kb-how-it-works.html

### Amazon Bedrock AgentCore

https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html

Use AWS documentation primarily to connect concepts to the services you already work with.

---

# WEEK 1 — AI, ML, Deep Learning & LLM Foundations

## Day 1 — AI → ML → Deep Learning → Generative AI → LLM

### Learn

Understand the hierarchy:

```text
Artificial Intelligence
        ↓
Machine Learning
        ↓
Deep Learning
        ↓
Generative AI
        ↓
Large Language Models
```

Understand:

- AI
- ML
- supervised learning
- unsupervised learning
- reinforcement learning
- deep learning
- generative AI
- foundation models
- LLMs

### Resource

Udemy — AI Engineer Core Track

YouTube — Karpathy Intro to LLMs

### Exercise

Explain each term in one sentence without using jargon.

### Checkpoint

You should be able to answer:

> Is every AI system an LLM?

---

# Day 2 — Machine Learning Fundamentals

### Learn

Understand:

- training data
- features
- labels
- model
- training
- inference
- loss
- optimization
- overfitting
- generalization

### Mental model

```text
Data
  ↓
Training
  ↓
Model
  ↓
Inference
  ↓
Prediction
```

### Exercise

Explain the difference between:

- training
- inference

### Checkpoint

Why can a model perform well on training data but badly on unseen data?

---

# Day 3 — Neural Networks

### Learn

Watch selected 3Blue1Brown neural-network videos.

Focus on:

- neurons
- weights
- biases
- layers
- activations
- forward pass
- loss
- gradient descent
- backpropagation

### Resource

3Blue1Brown Neural Networks

https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr

### Exercise

Draw:

```text
Input → Hidden Layer → Hidden Layer → Output
```

and explain what each part does.

### Checkpoint

Explain:

> How does a neural network learn?

---

# Day 4 — Deep Learning → Transformers

### Learn

Understand why deep learning became powerful for language.

Learn:

- representation learning
- sequence data
- recurrent neural networks at a high level
- limitations of sequential processing
- why transformers changed NLP

### Resource

Udemy — AI Engineer Core Track

### Exercise

Answer:

> Why were transformers such a big change for language models?

---

# Day 5 — What Is an LLM?

### Learn

Watch the first major conceptual portion of Karpathy's talk.

Focus on:

- next-token prediction
- vocabulary
- tokens
- probabilities
- model parameters
- inference

### Resource

Karpathy — Intro to Large Language Models

https://www.youtube.com/watch?v=zjkBMFhNj_g

### Mental model

```text
Prompt
  ↓
Tokens
  ↓
LLM
  ↓
Probability distribution
  ↓
Next token
  ↓
Repeat
  ↓
Response
```

### Checkpoint

Explain:

> What is an LLM actually doing when it generates text?

---

# Day 6 — Training vs Inference

### Learn

Understand:

### Training

```text
Huge dataset
     ↓
Predict next token
     ↓
Calculate error
     ↓
Update parameters
     ↓
Repeat billions/trillions of times
```

### Inference

```text
User prompt
     ↓
Tokenization
     ↓
Model
     ↓
Next-token prediction
     ↓
Generated response
```

Understand:

- pretraining
- supervised fine-tuning
- preference/post-training at a high level
- inference
- sampling

### Resource

Karpathy + Udemy Core Track

### Checkpoint

Explain why inference does not normally change the model's weights.

---

# Day 7 — Week 1 Review

Without looking at notes, explain:

1. AI
2. ML
3. Deep Learning
4. Generative AI
5. Foundation model
6. LLM
7. Training
8. Inference
9. Neural network
10. Transformer

### Final exercise

Explain:

> "What happens when I send a prompt to an LLM?"

in 2 minutes.

---

# WEEK 2 — Tokens, Embeddings, Transformers, Attention & Generation

# Day 8 — Tokens & Tokenization

### Learn

Understand:

- token
- tokenization
- subword tokens
- input tokens
- output tokens
- token count
- token limits

### Important

A token is **not necessarily a word**.

### Exercise

Think about why:

```text
"playing"
```

might be represented differently from:

```text
"play"
```

### AWS Mapping

In Bedrock:

```text
User text
   ↓
Model tokenizer
   ↓
Input tokens
   ↓
Foundation model
```

---

# Day 9 — Context Windows

### Learn

Understand:

- context window
- prompt tokens
- conversation history
- retrieved context
- tool results
- output tokens

### Mental model

```text
System instructions
+ User prompt
+ Conversation
+ RAG context
+ Tool results
        ↓
   Context window
        ↓
       LLM
```

### Checkpoint

Why does a huge RAG result potentially hurt an LLM?

---

# Day 10 — Embeddings

### Learn

Understand:

> An embedding represents information as a numerical vector that captures semantic relationships.

Learn:

- embedding model
- vector
- dimensions
- semantic similarity
- cosine similarity at a conceptual level

### Resource

DeepLearning.AI — Building Applications with Vector Databases

https://www.deeplearning.ai/courses/building-applications-vector-databases/

### Mental model

```text
Text
 ↓
Embedding model
 ↓
Vector
 ↓
Semantic representation
```

### AWS Mapping

```text
Document chunk
      ↓
Bedrock embedding model
      ↓
Embedding vector
      ↓
Vector index
```

---

# Day 11 — Vector Databases & Similarity Search

### Learn

Understand:

- vector database
- vector index
- nearest-neighbor search
- semantic search
- metadata filtering
- hybrid search

### Mental model

```text
Query
 ↓
Query embedding
 ↓
Vector search
 ↓
Similar chunks
```

### AWS Mapping

Amazon Bedrock Knowledge Bases abstracts much of the RAG infrastructure and can manage ingestion, indexing, and retrieval.

---

# Day 12 — Transformers

### Learn

Understand the architecture conceptually:

```text
Tokens
  ↓
Embeddings
  ↓
Transformer blocks
  ↓
Attention + Feed Forward
  ↓
Output probabilities
```

Learn:

- transformer
- encoder
- decoder
- decoder-only LLM
- transformer block
- positional information

### Resource

Udemy — AI Engineer Core Track

### Checkpoint

Why are modern LLMs generally based on transformers?

---

# Day 13 — Attention

### Learn

Understand attention conceptually.

You do not need to calculate matrices.

Understand:

- query
- key
- value
- attention score
- self-attention
- multi-head attention

### Simple mental model

> Attention helps the model decide which parts of the context are relevant to the current token.

### Checkpoint

Explain attention without using equations.

---

# Day 14 — How an LLM Generates a Response

### Learn

Understand:

```text
Prompt
 ↓
Tokenization
 ↓
Embeddings
 ↓
Transformer
 ↓
Logits / probabilities
 ↓
Sampling / decoding
 ↓
Next token
 ↓
Repeat
```

Learn at a high level:

- temperature
- top-p
- greedy decoding
- deterministic vs probabilistic generation

### Checkpoint

Explain why the same prompt can sometimes produce different answers.

---

# WEEK 3 — Prompt Engineering, RAG & Knowledge Bases

# Day 15 — Prompt Engineering Fundamentals

### Learn

Understand:

- zero-shot prompting
- few-shot prompting
- role prompting
- task specification
- constraints
- examples
- structured outputs

### Mental model

```text
Good prompt
=
Task
+ Context
+ Constraints
+ Expected output
```

### Exercise

Take a vague prompt and mentally rewrite it into a structured prompt.

---

# Day 16 — System Prompts & Prompt Architecture

### Learn

Understand:

- system instructions
- user instructions
- context
- tool descriptions
- output format
- instruction hierarchy
- prompt injection

### Mental model

```text
System instructions
        +
User request
        +
Retrieved context
        +
Tool definitions/results
        ↓
       LLM
```

### AWS Mapping

Think about how system instructions and application-level prompts are used when invoking foundation models or running agents.

---

# Day 17 — What Is RAG?

### Learn

Understand:

> RAG = Retrieval Augmented Generation.

Instead of expecting the model to know every piece of information, retrieve relevant information and give it to the model as context.

### Mental model

```text
User question
      ↓
Retrieve relevant information
      ↓
Add information to prompt
      ↓
LLM
      ↓
Grounded answer
```

### AWS Mapping

Amazon Bedrock Knowledge Bases provide a managed way to implement RAG.

AWS documentation:

https://docs.aws.amazon.com/bedrock/latest/userguide/kb-how-it-works.html

---

# Day 18 — RAG Ingestion Pipeline

### Learn

Understand the offline/data-preparation side of RAG:

```text
Documents
   ↓
Parsing
   ↓
Chunking
   ↓
Embedding
   ↓
Vector index
```

Also understand:

- chunk size
- chunk overlap
- metadata
- document parsing
- ingestion

### AWS Mapping

Bedrock Knowledge Bases automate important parts of this pipeline.

AWS documentation:

https://docs.aws.amazon.com/bedrock/latest/userguide/kb-how-data.html

---

# Day 19 — RAG Retrieval Pipeline

### Learn

Understand the runtime side:

```text
User query
    ↓
Query embedding
    ↓
Vector search
    ↓
Relevant chunks
    ↓
Optional filtering/reranking
    ↓
Context
    ↓
LLM
    ↓
Answer
```

Learn:

- retrieval
- top-k
- relevance
- reranking
- context augmentation
- grounded generation

### AWS Mapping

Bedrock Knowledge Bases support retrieval and current managed capabilities include advanced retrieval options such as reranking and agentic retrieval.

---

# Day 20 — RAG vs Fine-Tuning

### Learn

Understand the fundamental difference.

### RAG

Changes **what information is supplied to the model**.

### Fine-tuning

Changes **the model's learned behavior/parameters**.

### Use RAG when

- information changes frequently
- private documents are involved
- citations/grounding matter
- you need external knowledge

### Consider fine-tuning when

- behavior/style needs adaptation
- domain-specific patterns matter
- consistent output behavior is required

### Key question

> Am I changing the model, or changing the context given to the model?

---

# Day 21 — Amazon Bedrock Knowledge Bases

### Learn

Study the AWS documentation:

https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html

Understand conceptually:

- data sources
- ingestion
- chunking
- embeddings
- vector storage
- retrieval
- reranking
- metadata/filtering
- citations
- managed vs customer-managed approaches
- multimodal/advanced retrieval concepts
- agentic retrieval

### Most important mental model

```text
Documents
   ↓
Parse
   ↓
Chunk
   ↓
Embed
   ↓
Index
   ↓
Retrieve
   ↓
Rerank / filter
   ↓
Context
   ↓
LLM
   ↓
Grounded response
```

---

# WEEK 4 — Agents, Tools, Memory, MCP, Fine-Tuning, Guardrails & Evaluation

# Day 22 — What Is an AI Agent?

### Learn

Understand the difference between:

- LLM
- chatbot
- assistant
- workflow
- agent

### Agent mental model

```text
Goal
 ↓
LLM decides
 ↓
Tool / RAG / Memory
 ↓
Observe result
 ↓
LLM decides again
 ↓
Repeat
 ↓
Final answer
```

### Key idea

An agent is not simply "an LLM with a fancy prompt."

The important idea is a **decision/action/observation loop**.

---

# Day 23 — Agent vs Chatbot vs Workflow

### Learn

Compare:

| System | Main characteristic |
|---|---|
| Chatbot | Responds to user |
| LLM application | Uses model to perform a task |
| Workflow | Predetermined sequence |
| Agent | Dynamically decides what to do next |
| Multi-agent system | Multiple agents collaborate |

### Exercise

For each example, decide whether it is:

- chatbot
- workflow
- agent

---

# Day 24 — Tool / Function Calling

### Learn

Understand:

```text
User
 ↓
LLM
 ↓
Decides tool is needed
 ↓
Tool call
 ↓
External system
 ↓
Tool result
 ↓
LLM
 ↓
Final response
```

Understand:

- tool schema
- tool selection
- arguments
- tool result
- validation
- permissions
- failure handling

### AWS / AgentCore Mapping

AgentCore Gateway can expose APIs, Lambda functions, existing services, and MCP-compatible tools to agents.

AWS documentation:

https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/gateway-core-concepts.html

---

# Day 25 — Memory

### Learn

Distinguish:

### Context

Information currently supplied to the model.

### Short-term memory

Conversation/session-level information.

### Long-term memory

Information persisted across sessions.

### Mental model

```text
Current context
      ↓
Short-term memory
      ↓
Long-term memory
```

### AWS Mapping

AgentCore Memory supports short-term and long-term memory for context-aware agents.

AWS documentation:

https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html

---

# Day 26 — MCP & Multi-Agent Systems

### Learn

Understand:

- Model Context Protocol (MCP)
- MCP server
- MCP client
- tools
- resources
- standardized tool access
- agent-to-agent concepts
- multi-agent orchestration

### Mental model

```text
Agent
  ↓
MCP
  ↓
Tools / Services / Data
```

### AWS Mapping

AgentCore Gateway can make APIs and services available to agents as MCP-compatible tools and can connect to existing MCP servers.

### Important

Do not spend time learning MCP syntax today.

Understand **why MCP exists**.

---

# Day 27 — Fine-Tuning, Guardrails & AI Security

## Part A — Fine-Tuning

Understand:

- fine-tuning
- supervised fine-tuning
- parameter-efficient fine-tuning
- LoRA / QLoRA at a high level
- when fine-tuning makes sense

Remember:

```text
RAG
→ change the context

Fine-tuning
→ change model behavior
```

---

## Part B — Guardrails

Understand:

- harmful content
- prompt injection
- jailbreaks
- PII
- data leakage
- tool misuse
- hallucination risk
- output validation
- access control

### AWS Mapping

Think of Bedrock Guardrails as one layer in a larger AI safety architecture.

Do not treat guardrails as a complete security solution.

---

# Day 28 — Evaluation, LLMOps & Observability

### Learn

Understand why:

> "The model gave a good answer once" is not an evaluation strategy.

Learn:

- evaluation dataset
- reference-based evaluation
- reference-free evaluation
- LLM-as-a-judge
- correctness
- relevance
- groundedness
- toxicity/safety
- tool-call accuracy
- task completion
- regression testing

### LLMOps

Understand:

- versioning
- monitoring
- evaluation
- tracing
- latency
- cost
- failures
- continuous improvement

### AWS Mapping

AgentCore provides dedicated evaluation and observability capabilities for agent systems.

AWS documentation:

https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html

---

# Day 29 — Build Your Complete AI Mental Model

This is the most important review day.

You should now be able to explain this entire system:

```text
                         ┌───────────────┐
                         │   User Goal   │
                         └───────┬───────┘
                                 ↓
                         ┌───────────────┐
                         │ Prompt /      │
                         │ Instructions  │
                         └───────┬───────┘
                                 ↓
                    ┌────────────┴────────────┐
                    ↓                         ↓
              ┌───────────┐             ┌───────────┐
              │   RAG /   │             │   Tools   │
              │ Knowledge │             │ / APIs    │
              │   Base    │             └─────┬─────┘
              └─────┬─────┘                   │
                    ↓                         ↓
              Retrieved Context        Tool Results
                    └────────────┬────────────┘
                                 ↓
                         ┌───────────────┐
                         │     LLM       │
                         │   / Agent     │
                         └───────┬───────┘
                                 ↓
                         Decide / Generate
                                 ↓
                       ┌─────────┴─────────┐
                       ↓                   ↓
                    Answer              Action
                                           ↓
                                      Tool / API
                                           ↓
                                      Observation
                                           ↓
                                      LLM / Agent
                                           ↓
                                      Final Answer
```

Then add:

```text
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

---

# Day 30 — Final Assessment

Answer these without looking at notes.

## Foundations

1. What is AI?
2. What is machine learning?
3. What is deep learning?
4. What is generative AI?
5. What is a foundation model?
6. What is an LLM?

## LLMs

7. What is a token?
8. What is tokenization?
9. What is an embedding?
10. What is a transformer?
11. What is attention?
12. What is a context window?
13. What happens during inference?
14. Why can LLM output be probabilistic?

## Prompting

15. What is zero-shot prompting?
16. What is few-shot prompting?
17. What is a system prompt?
18. What is prompt injection?

## RAG

19. What is RAG?
20. Why do we chunk documents?
21. What is an embedding model?
22. What is a vector index?
23. What happens during retrieval?
24. What is reranking?
25. Why might you choose RAG instead of fine-tuning?

## Agents

26. What is an AI agent?
27. How is an agent different from a workflow?
28. What is tool calling?
29. What is memory?
30. What is MCP?

## Production

31. What are guardrails?
32. What is LLM evaluation?
33. What is LLMOps?
34. What is observability?
35. Why is tracing useful?

---

# AWS CONCEPT MAPPING — THE MOST IMPORTANT SECTION

## Do Not Learn AI Separately From AWS

Because your practical work already involves AWS Bedrock, Knowledge Bases and AgentCore, every AI concept should immediately be translated into AWS terminology.

The goal is not:

```text
Learn AI
   ↓
Finish
   ↓
Learn AWS
```

Instead:

```text
AI Concept
   ↓
Understand the concept
   ↓
Map it to AWS
   ↓
Understand where it appears in your architecture
```

---

# Core AI → AWS Mapping

| AI Concept | What It Means | AWS / Bedrock Mapping |
|---|---|---|
| Foundation Model | General-purpose pretrained model | Amazon Bedrock foundation models |
| LLM | Model specialized in language generation | Claude, Amazon Nova, Llama, etc. through Bedrock |
| Inference | Using a trained model to generate output | Bedrock model invocation |
| Prompt | Input/instructions sent to model | Model request / agent prompt |
| System Prompt | High-level behavioral instructions | Agent/system instructions |
| Token | Unit processed by language model | Input/output tokens |
| Context Window | Information available to model for a request | Prompt + conversation + retrieved context + tool results |
| Embedding | Numerical semantic representation | Bedrock embedding models |
| Vector Search | Finding semantically similar content | Knowledge Bases retrieval |
| RAG | Retrieval + generation | Amazon Bedrock Knowledge Bases |
| Chunking | Splitting documents into retrieval units | Knowledge Base ingestion |
| Vector Index | Stores/searches embeddings | Managed/customer-managed vector storage behind Knowledge Bases |
| Retriever | Finds relevant information | Knowledge Base retrieval |
| Reranking | Reorders retrieved results by relevance | Knowledge Base reranking |
| Grounding | Answering using supplied evidence | RAG / Knowledge Bases |
| Agent | System that reasons/acts through tools | Amazon Bedrock AgentCore |
| Agent Loop | Decide → act → observe → decide | AgentCore agent execution |
| Tool Calling | Model requests an external action | AgentCore tools / Gateway |
| API Tool | External capability exposed to agent | AgentCore Gateway |
| MCP | Standardized way to expose agent capabilities | AgentCore Gateway / MCP |
| Short-Term Memory | Current/session context | AgentCore Memory |
| Long-Term Memory | Persistent information | AgentCore Memory |
| Browser Tool | Agent interacts with web | AgentCore Browser |
| Code Execution | Agent runs code in a sandbox | AgentCore Code Interpreter |
| Agent Runtime | Environment where agent executes | AgentCore Runtime |
| Guardrails | Safety/control layer | Amazon Bedrock Guardrails + other security controls |
| Evaluation | Measure AI quality | AgentCore Evaluations / application evaluation |
| Tracing | Inspect execution steps | AgentCore Observability |
| Monitoring | Watch production behavior | AgentCore Observability / CloudWatch |
| LLMOps | Operating AI systems reliably | Evaluation + observability + deployment + monitoring |
| Agent Registry | Discover/manage agent resources | AgentCore Registry |

---

# AWS RAG Mental Model

Amazon Bedrock Knowledge Bases implement the RAG pattern by handling major parts of ingestion and retrieval.

Conceptually:

```text
                OFFLINE / INGESTION

Documents
   ↓
Parsing
   ↓
Chunking
   ↓
Embedding Model
   ↓
Vector Representation
   ↓
Vector Index
```

At runtime:

```text
                ONLINE / QUERY

User Question
     ↓
Query Embedding
     ↓
Vector Search
     ↓
Relevant Chunks
     ↓
Optional Filtering / Reranking
     ↓
Retrieved Context
     ↓
Prompt Augmentation
     ↓
Foundation Model
     ↓
Grounded Response
```

AWS describes Knowledge Bases as a managed way to implement RAG and automate significant parts of this pipeline.

AWS documentation:

https://docs.aws.amazon.com/bedrock/latest/userguide/kb-how-it-works.html

---

# AWS AgentCore Mental Model

AgentCore should be understood as a platform around agent execution rather than simply "another LLM API."

Conceptually:

```text
                         USER GOAL
                            ↓
                         AGENT
                            ↓
                    ┌───────┼────────┐
                    ↓       ↓        ↓
                  Memory   Tools    RAG
                    ↓       ↓        ↓
                    └───────┼────────┘
                            ↓
                      Observe Result
                            ↓
                      Decide Again
                            ↓
                       Final Answer
```

Surrounding the agent:

```text
                ┌─────────────────────┐
                │     AgentCore       │
                │                     │
                │ Runtime             │
                │ Memory              │
                │ Gateway             │
                │ Identity            │
                │ Browser             │
                │ Code Interpreter    │
                │ Evaluations         │
                │ Observability       │
                │ Registry            │
                │ Policy              │
                └─────────────────────┘
```

AWS documentation:

https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html

---

# Knowledge Bases + AgentCore

An important architecture to understand is:

```text
                    Agent
                      ↓
               Agent decides:
               "I need knowledge"
                      ↓
             Knowledge Base
                      ↓
                Retrieval
                      ↓
             Retrieved Context
                      ↓
                    Agent
                      ↓
                 Final Answer
```

Modern AWS capabilities can also expose a managed Knowledge Base through AgentCore Gateway, allowing an agent to discover and query it through standardized agent tooling.

The key conceptual point:

> Knowledge Bases provide the **knowledge/retrieval capability**; AgentCore provides the broader **agent execution/orchestration platform**.

---

# The Full AWS-Oriented AI Architecture

Put everything together:

```text
                         USER
                           ↓
                    Application/API
                           ↓
                    Guardrails / Policy
                           ↓
                     Agent / LLM
                           ↓
              ┌────────────┼─────────────┐
              ↓            ↓             ↓
           Memory         RAG          Tools
              ↓            ↓             ↓
       AgentCore       Knowledge      Gateway
         Memory           Base           ↓
                           ↓          APIs/MCP
                           ↓
                       Retrieved
                        Context
              └────────────┼─────────────┘
                           ↓
                         LLM
                           ↓
                  Decision / Response
                           ↓
                    Final Answer
                           ↓
                 Evaluation / Trace
                           ↓
                  Observability
                           ↓
                    Monitoring
                           ↓
                   Improvement
```

This is the mental model you should carry into real projects.

---

# What NOT to Study This Month

Do **not** spend your limited 1-hour/day learning time on implementation details yet.

Skip:

- Python fundamentals
- LangChain implementation
- LlamaIndex implementation
- FAISS coding
- Chroma coding
- API implementation
- Docker
- Kubernetes
- Terraform
- CI/CD implementation
- framework-specific syntax
- deployment tutorials
- building portfolio projects

These are useful later.

For this month, prioritize:

> **Concept → Mental Model → AWS Mapping**

---

# What to Study After These 30 Days

Once this foundation is complete, your next learning phase can become implementation-focused.

Recommended sequence:

## Phase 1 — Python + AI APIs

Learn:

- Python
- API calls
- structured outputs
- tool calling
- streaming
- conversation state

## Phase 2 — RAG Engineering

Learn:

- chunking strategies
- embedding models
- retrieval strategies
- hybrid search
- reranking
- metadata filtering
- query transformation
- evaluation of retrieval

## Phase 3 — Agent Engineering

Learn:

- agent loops
- tool design
- planning
- state
- memory
- MCP
- multi-agent patterns
- agent orchestration

## Phase 4 — Production AI

Learn:

- evaluation
- tracing
- observability
- security
- guardrails
- latency
- cost
- reliability
- deployment

## Phase 5 — Projects

Build:

1. Personal knowledge assistant
2. RAG application
3. Tool-using agent
4. Agent + Knowledge Base
5. Production-style agent with evaluation and observability

---

# Final Success Criteria

At the end of 30 days, you should be able to explain this chain confidently:

```text
AI
 ↓
Machine Learning
 ↓
Deep Learning
 ↓
Generative AI
 ↓
Foundation Models
 ↓
LLMs
 ↓
Tokens
 ↓
Transformers
 ↓
Attention
 ↓
Context
 ↓
Prompting
 ↓
Embeddings
 ↓
Vector Search
 ↓
RAG
 ↓
Knowledge Bases
 ↓
Agents
 ↓
Tool Calling
 ↓
Memory
 ↓
MCP
 ↓
Guardrails
 ↓
Evaluation
 ↓
Observability
 ↓
LLMOps
```

And, more importantly, translate it into your AWS environment:

```text
LLM
→ Bedrock Foundation Model

Embeddings
→ Bedrock Embedding Model

RAG
→ Bedrock Knowledge Bases

Retrieval
→ Knowledge Base Retrieval

Reranking
→ Knowledge Base Reranking

Agent
→ AgentCore

Tools
→ AgentCore Gateway / tools

MCP
→ AgentCore Gateway

Memory
→ AgentCore Memory

Runtime
→ AgentCore Runtime

Guardrails
→ Bedrock Guardrails + security controls

Evaluation
→ AgentCore Evaluations

Tracing / Observability
→ AgentCore Observability
```

---

# One-Sentence Goal

> **After these 30 days, you should be able to look at an AI architecture and understand not only what AWS service is being used, but WHY that service exists and what underlying AI concept it implements.**

