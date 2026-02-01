# Basic Cloud Governance Framework

## What is this?

A minimal but explicit set of principles and processes for adopting and running cloud (here, Azure) in a controlled way. It answers: what we allow, how we decide, how we track decisions, and how we respond when things go wrong. “Basic” means fit for small teams and orgs that can’t run a full enterprise governance programme but still need clarity and accountability.

## Why does it matter for risk, compliance, or people?

- **Risk** — Without governance, cloud adoption is ad hoc. Decisions are inconsistent, drift goes unnoticed, and incidents are harder to contain and learn from.
- **Compliance** — Regulators and auditors expect documented policies, decision trails, and evidence of control. A simple framework gives you something to point to and improve.
- **People** — Staff know what’s expected; data subjects and partners see that the org takes governance seriously. Reduces “who decided that?” and “why are we allowed to do this?” confusion.

## What goes wrong in real life?

- **No written framework** — “We’re careful” or “IT handles it.” When something fails, there’s no baseline to compare against and no clear ownership.
- **Framework exists but isn’t used** — Policy doc on a share; no integration with project intake, architecture decisions, or incident response. Governance becomes theatre.
- **Too heavy for the org** — Enterprise-grade controls imposed on a charity or startup; people bypass them or give up, and governance gets a bad name.
- **No decision logging** — “We decided to use region X” but no record of why, who approved, or what risks were accepted. Audits and post-incident reviews suffer.

## Who gets hurt when it goes wrong?

- **The organisation** — Repeated incidents, audit findings, contract or regulatory penalties. Cost of remediation and rework when governance is retrofitted after a breach.
- **Staff** — Unclear expectations, conflicting guidance, and burnout when they’re asked to “do governance” without time or authority.
- **Data subjects and beneficiaries** — Indirect harm when poor governance leads to misconfiguration, over-retention, or inappropriate access that could have been caught by simple checks.

## Elements of a basic framework (to expand in /frameworks)

- **Principles** — e.g. privacy by default, proportionality, accountability, least privilege.
- **Risk intake** — How new services, projects, or data types get assessed before go-live.
- **Decision log** — Key decisions (e.g. region, retention, sharing) recorded with rationale and owner.
- **Incident response basics** — Who is notified, what is documented, when to escalate; link to data breach notification if applicable.
- **Review cadence** — When access, policies, and risks are revisited (e.g. quarterly or on major change).

See [../frameworks/lightweight-grc.md](../frameworks/lightweight-grc.md) for a concrete “Lightweight Governance for Small UK Orgs” version.
