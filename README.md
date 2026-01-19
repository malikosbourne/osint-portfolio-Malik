# OSINT Portfolio — Malik Osbourne

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen)]()
[![Topics](https://img.shields.io/badge/Topics-OSINT%20%7C%20Ethics%20%7C%20Data%20Analysis-lightgrey)]()

Welcome — this repository collects my open-source intelligence (OSINT), digital verification work, and reproducible investigations. I focus on combining data, ethics, and open tools to evaluate claims and produce transparent, reproducible findings.

Demo / Highlights
- AI Podcast Studio — local transcription + semantic search + content generation (see projects/ai-podcast-studio.md)
- Coca‑Cola Investigation — in-progress case study on marketing and health policy (see projects/coca-cola-investigation.md)
- IT Support Ticket Simulator — hands-on demo of Issue-driven workflows (see IT-Support-Ticket-Simulator/)

Quick links
- Projects overview: ./projects/
- Notebooks (reproducible analyses): ./notebooks/
- Digital bootcamp log: ./Digital-bootcamp/
- Books & notes: ./books/
- Contact / Subscribe: https://malikosbourne00.substack.com/

Why this repo
- Transparent OSINT workflows with annotated notebooks and write-ups
- Emphasis on ethics and reproducibility (add DATA_USAGE.md and CITATION.cff)
- Practical projects suitable for portfolio demos and interviews

Structure
- projects/ — investigations and project pages (each project should have its own README)
- notebooks/ — Jupyter notebooks + sample data pointers (include environment.yml / requirements.txt)
- IT-Support-Ticket-Simulator/ — hands-on project that uses GitHub Issues to simulate tickets
- books/ — reading notes and analyses

Reproducibility
To reproduce notebooks locally:
1. Create environment:
   - conda env: `conda env create -f environment.yml` (if provided)
   - or pip: `python -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt`
2. Launch Jupyter: `jupyter lab`
3. Open notebooks in `notebooks/` and follow the top-level README there.

Ethics & Data
- All investigations follow a principle of minimizing harm: do not expose private identifiers or dox individuals.
- For any dataset, see `DATA_USAGE.md` (add per-project) describing sources, licenses, and redaction steps.

How to contribute
- See CONTRIBUTING.md for contribution guidelines and templates.
- If you want to reproduce or extend an investigation, open an issue with the tag `enhancement` and describe your proposal.

License & Citation
- License: MIT (LICENSE file added)
- Consider adding CITATION.cff if you want academic citations for your case studies.

Contact
- Substack: https://malikosbourne00.substack.com/
- LinkedIn: (add link)