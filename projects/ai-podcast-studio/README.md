# AI Podcast Studio — Local transcription & semantic search

TL;DR
A local toolchain to transcribe podcast audio, build a semantic embeddings index, and generate short summaries/snippets with a local LLM or template-based generator. Designed to be privacy-friendly and reproducible for demos and research.

Executive summary
- Goal: convert audio into searchable, semantically-retrievable text and generate short-form content or episode highlights automatically.
- Skills showcased: audio processing, speech-to-text, embeddings, information retrieval, minimal UX/CLI, reproducibility.

Demo / Visuals
- Add a short GIF or screenshot to `projects/ai-podcast-studio/demos/` to show transcription -> search -> snippet generation.

Why it matters
- Quickly turn long audio into searchable knowledge and short-form shareable content; useful for content creators, researchers, and journalists.

Methods & architecture
- Input: podcast audio (.wav, .mp3)
- Speech-to-text: Whisper or other local STT (or cloud API if noted)
- Embeddings: sentence-transformers (or OpenAI/other if noted)
- Vector store: FAISS (local) or simple in-memory index for demos
- Generation: local LLM or template-based summary generator

Quickstart (local reproducible demo)
1. Clone the repo and open the project folder:
   ```bash
   git clone https://github.com/malikosbourne/osint-portfolio-Malik.git
   cd osint-portfolio-Malik/projects/ai-podcast-studio
   ```
2. Create environment and install dependencies (see top-level requirements.txt):
   ```bash
   python -m venv .venv && . .venv/bin/activate
   pip install -r ../../requirements.txt
   ```
3. Transcribe an example file:
   ```bash
   python src/transcribe.py --input examples/sample.wav --output data/sample_transcript.json
   ```
4. Build embeddings and index:
   ```bash
   python src/build_index.py --input data/sample_transcript.json --output data/index.faiss
   ```
5. Query the index and generate a short highlight:
   ```bash
   python src/query.py --index data/index.faiss --query "what are the main topics in the episode"
   ```

Reproducibility notes
- Use the provided `examples/` audio files and the top-level `requirements.txt` to reproduce the demo.
- For heavy models, use trimmed audio clips and small embedding models.

Data & Ethics
- Use public or synthetic audio for demos. Avoid processing private recordings without consent.
- If using third-party content, follow the content license and attribute sources.

Files
- `src/` — helper scripts (transcribe, build_index, query)
- `examples/` — small demo audio
- `demos/` — screenshots/GIFs for README
- `data/` — sample transcripts and index files (redacted or synthetic)

Limitations & next steps
- Add a small web UI or Streamlit demo for interactive search
- Add CI to run a smoke test on a trimmed example audio file

License
- MIT (see root LICENSE)