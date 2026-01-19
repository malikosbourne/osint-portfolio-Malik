# Contributing

Thanks for your interest in contributing! This repository contains research, case studies, and reproducible notebooks — please follow these guidelines to keep contributions ethical and reproducible.

How to contribute
- Issues: Use Issues to report bugs, request features, or propose new investigations. Tag your issue with one of: `bug`, `enhancement`, `question`, `ethics`.
- Pull Requests: Create a PR from a feature branch. Use the PR template and reference any related issue.
- Small fixes: typos, formatting, and docs improvements are very welcome.

Standards for research contributions
- Ethics check: Before adding new OSINT content, confirm the data is public, permissible to share, and does not expose private data or identifiers.
- Documentation: Each investigation must include a README that lists data sources, methods, commands to reproduce, and a clear statement of limitations.
- Reproducibility: Include environment.yml or requirements.txt and any small sample datasets required to run notebooks. For large datasets, include a script or link to obtain them.

Code style & testing
- Python: follow PEP8 where practical. Use `black` or `ruff` locally if possible.
- Notebooks: Keep outputs small in repo; prefer storing outputs as separate static files or optimized images.
- Tests: Add simple test scripts under `tests/` for any non-trivial code module.

Communication & attribution
- If you use external data or code, add attribution and licenses where applicable.
- If you contribute a notebook-based analysis, include a short summary in the PR description.

If you’re unsure about ethics or data licensing for a contribution, open an issue and tag it `ethics` and we’ll discuss before merging.