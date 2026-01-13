# 🎙️ AI Podcast Studio

> **Status:** 🟢 Active  
> **Project Type:** AI Tool Development  
> **Date Started:** 2024

---

## 📋 Overview

AI Podcast Studio is a **local, privacy-focused tool** for podcast creators and researchers. It enables automatic transcription, semantic search, and AI-powered content generation—all running **offline on your machine**. No data leaves your computer, making it perfect for sensitive content or privacy-conscious workflows.

---

## 🎯 Objective

Create a comprehensive podcast analysis and production tool that:

1. ✅ **Transcribes audio automatically** using OpenAI's Whisper model
2. ✅ **Enables semantic search** to find content by meaning, not just keywords
3. ✅ **Generates podcast assets** including titles, show notes, and clip suggestions
4. ✅ **Provides timestamped transcripts** with SRT subtitle export
5. ✅ **Runs completely offline** with full privacy protection

---

## ✨ Key Features

### 🎙️ Audio Processing
- MP3 upload and processing
- Automatic transcription with timestamps
- Waveform audio player with seek functionality
- Support for various audio formats via FFmpeg

### 🔍 Search & Discovery
- **Semantic Search**: Find content by meaning using sentence transformers
- **Keyword Search**: Traditional text-based search
- **Best Lines Extraction**: AI-powered identification of most representative quotes
- **Chapter Detection**: Automatic chapter suggestions based on content structure

### 🤖 AI-Powered Content Generation
- **Smart Summaries**: Extractive summaries using semantic embeddings
- **Title Suggestions**: AI-generated episode titles
- **Show Notes**: Auto-generated show notes paragraphs
- **Clip Ideas**: Timestamped clip suggestions for social media
- **Theme Analysis**: Creative analysis of emotional tone and themes
- **Mood Tags**: Automatic mood and theme classification

### 📁 Export & Organization
- Plain text transcripts
- Timestamped transcripts
- SRT subtitle files
- JSON segment data
- Project organization with metadata
- Embeddings storage for fast semantic search

---

## 🏗️ Technical Architecture

### Core Technologies

| Technology | Purpose |
|------------|---------|
| **Python 3.10+** | Core language |
| **Whisper (OpenAI)** | Speech-to-text transcription |
| **Sentence Transformers** | Semantic embeddings and search |
| **Streamlit** | Web-based user interface |
| **FFmpeg** | Audio processing |
| **NLTK** | Natural language processing utilities |
| **Transformers (Hugging Face)** | BART model for summarization |

### Key Components

#### 1. Transcription Engine (`transcribe.py`)
- Uses Whisper base model for transcription
- Generates timestamped segments
- Exports multiple formats (txt, JSON, SRT)

#### 2. Semantic Search (`semantic_search.py`)
- Chunks transcript into searchable segments
- Uses `all-MiniLM-L6-v2` for embeddings
- Cosine similarity for relevance ranking

#### 3. Web Application (`app.py`)
- Streamlit-based interface
- Real-time transcription
- Interactive search with audio jumping
- AI content generation tools
- Project management and export

---

## 🔄 Methodology

### Transcription Process
1. User uploads MP3 file
2. Whisper model transcribes audio with timestamps
3. Transcript is segmented into searchable chunks
4. Embeddings are generated for semantic search
5. Multiple export formats are generated

### Semantic Search Process
1. Transcript is chunked into ~80-word segments
2. Each chunk is encoded into a vector embedding
3. User query is encoded into the same embedding space
4. Cosine similarity finds most relevant segments
5. Results are ranked and displayed with timestamps

### Content Generation Process
1. **Summary**: Extracts semantically central sentences
2. **Title**: Analyzes keywords and central themes
3. **Show Notes**: Uses BART model for abstractive summarization
4. **Clips**: Scores segments by emotional keywords
5. **Themes**: Rule-based analysis of tone and topics

---

## 💼 Use Cases

### For Podcast Creators
- Quick transcription of interviews and episodes
- Generate show notes and episode descriptions
- Find specific moments for clip creation
- Organize multiple episodes into projects

### For Researchers
- Transcribe research interviews
- Search transcripts by concept, not exact words
- Extract key quotes and themes
- Maintain privacy with offline processing

### For Content Teams
- Batch process multiple episodes
- Generate social media clip suggestions
- Create accessible content with SRT subtitles
- Organize content libraries with metadata

---

## 🔒 Privacy & Security

> ⚠️ **All processing happens locally on your machine:**
> - No audio data sent to external servers
> - No transcripts uploaded to cloud services
> - Models downloaded once and cached locally
> - Perfect for sensitive content or confidential interviews

---

## 🚀 Installation & Setup

### Requirements
- Python 3.10+
- FFmpeg installed locally
- Virtual environment (recommended)

### Quick Start

```bash
cd podcast-ai
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
streamlit run app.py
```

---

## 📁 Project Structure

```
podcast-ai/
├── app.py                 # Main Streamlit application
├── transcribe.py          # Command-line transcription
├── semantic_search.py     # Command-line semantic search
├── requirements.txt       # Python dependencies
├── data/
│   ├── uploads/          # Uploaded audio files
│   ├── transcripts/      # Generated transcripts
│   ├── segments/         # Segment JSON files
│   └── subtitles/        # SRT subtitle files
└── models/               # Cached ML models
```

---

## ✅ Current Capabilities

| Feature | Status |
|---------|--------|
| MP3 Upload | ✅ |
| Whisper Transcription | ✅ |
| Timestamped Transcripts | ✅ |
| SRT Subtitle Export | ✅ |
| Semantic Search | ✅ |
| Keyword Search | ✅ |
| AI Summaries | ✅ |
| Title Generation | ✅ |
| Show Notes Generation | ✅ |
| Clip Suggestions | ✅ |
| Theme Analysis | ✅ |
| Project Management | ✅ |
| Offline Operation | ✅ |

---

## 🔮 Future Enhancements

- [ ] Multi-language transcription support
- [ ] Speaker diarization (identify different speakers)
- [ ] Batch processing for multiple files
- [ ] Integration with podcast hosting platforms
- [ ] Advanced analytics and insights
- [ ] Custom model fine-tuning
- [ ] Collaborative features
- [ ] API for programmatic access

---

## 📝 Technical Notes

### Model Choices
- **Whisper Base**: Balance between accuracy and speed
- **all-MiniLM-L6-v2**: Fast, efficient semantic embeddings
- **BART Large CNN**: High-quality abstractive summarization

### Performance Considerations
- First transcription may be slow (model download)
- Embeddings are cached for faster subsequent searches
- Large files (>1 hour) may require more memory

---

## 📚 Resources

### Documentation
- [Podcast AI README](https://github.com/malikosbourne/osint-portfolio-Malik/tree/main/podcast-ai)
- [Whisper Documentation](https://github.com/openai/whisper)
- [Sentence Transformers](https://www.sbert.net/)

### Related Files
- `podcast-ai/app.py` - Main application
- `podcast-ai/transcribe.py` - Transcription script
- `podcast-ai/semantic_search.py` - Search script
- `podcast-ai/requirements.txt` - Dependencies

---

## 🔗 Links

- **GitHub Repository**: [osint-portfolio-Malik](https://github.com/malikosbourne/osint-portfolio-Malik)
- **Project Directory**: `/podcast-ai/`

---

*Last updated: 2024*


