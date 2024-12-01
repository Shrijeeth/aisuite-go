# aisuite-go
`aisuite-go` is the Go implementation of aisuite, a library developed by Andrew Ng, designed to simplify and unify interactions with multiple Generative AI providers. With a focus on delivering a developer-friendly interface, aisuite-go extends the capabilities of the original Python package into the Go ecosystem, providing a standardized way to interact with leading LLMs for chat completions and beyond.

Inspired by OpenAI's API design, aisuite-go allows developers to seamlessly test and compare responses across providers without altering their code. By acting as a lightweight wrapper around client libraries and APIs, it ensures high performance and reliability, leveraging either HTTP endpoints or SDKs for provider integration. `aisuite-go` empowers golang developers with the tools needed to integrate and evaluate diverse AI models, driving innovation without sacrificing simplicity.

## Supported Providers
- OpenAI
- Anthropic
- Azure
- Google
- AWS
- Groq
- Mistral
- HuggingFace
- Ollama

## Key Features
1. Unified Interface: Standardize interactions with multiple LLMs.
2. Flexible and Extensible: Swap out providers effortlessly for experimentation.
3. Optimized for Stability: Uses HTTP or SDKs for robust communication.
4. Future-Proof: Ongoing plans to expand beyond chat completions to other use cases.
