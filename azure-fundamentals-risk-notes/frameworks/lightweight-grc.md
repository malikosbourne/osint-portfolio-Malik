# Lightweight Governance for Small UK Orgs

A simple, honest, and human framework for small UK organisations (charities, SMEs, small public sector bodies) that need governance without enterprise overhead. It doesn’t need to be perfect — it needs to be **thoughtful and defensible**.

---

## Principles

1. **Privacy** — Personal data is used only for clear, lawful purposes; minimised, accurate, and kept only as long as needed. Data subjects are informed and can exercise their rights.
2. **Proportionality** — Controls and process are scaled to risk and size. We avoid “governance theatre”: no 50-page policies when a one-pager and a decision log will do.
3. **Accountability** — Someone is named for decisions and outcomes. We log *what* we decided, *why*, and *who* approved. We don’t hide behind “the system” or “the cloud.”
4. **Transparency** — We can explain to staff, data subjects, and regulators what we do and why. When we get it wrong, we correct and learn.

---

## Risk Intake Process

- **Before** adopting a new cloud service, handling a new data type, or starting a new project that touches personal/sensitive data:
  1. **Identify** — What data, whose data, where will it live (region), who needs access?
  2. **Assess** — What could go wrong? Who’s hurt? What’s the likelihood and impact? (Simple 3×3 or 5×5 is enough.)
  3. **Decide** — Do we go ahead? With what controls? Who owns the risk and the decision?
  4. **Log** — Decision and rationale go in the decision log (see below).

- **No formal “risk committee” required** — A single accountable person (e.g. DPO, COO, or trustee) can own intake and escalation. Escalate when: high impact, legal/regulatory uncertainty, or cross-organisation change.

---

## Decision Log

Keep a simple log (spreadsheet or markdown) of material governance decisions:

| Date | Decision | Rationale | Owner | Risk accepted (if any) |
|------|----------|-----------|--------|-------------------------|
| 2026-02-01 | Use Azure UK South for client data | UK residency required by contract; UK South selected | [Name] | None |
| … | … | … | … | … |

- **What to log** — Region choice, retention periods, sharing with third parties, use of AI/automation on personal data, significant access or architecture changes.
- **Why** — Auditors and regulators ask “how did you decide?” This is the answer. It also helps when people leave and others need context.

---

## Incident Response Basics

1. **Detect and contain** — Identify scope (what data, which systems, who’s affected). Stop further exposure (revoke access, disable accounts, lock storage).
2. **Assess** — Is this a personal data breach (UK GDPR)? Likely to result in risk to individuals? If yes, document and consider notification.
3. **Notify** — ICO: within 72 hours if breach is likely to result in risk to rights and freedoms. Data subjects: without undue delay when high risk. Follow ICO guidance.
4. **Record** — Log the incident: what happened, when, cause, impact, actions taken. Use it for lessons learned.
5. **Review** — Update controls and process so the same failure is less likely. Update risk register if needed.

---

## When Not to Use AI

- **Don’t use AI (including generative AI) for**:
  - Final decisions that affect individuals (e.g. eligibility, scoring, discipline) without human review and accountability.
  - Processing personal data in ways not covered by your privacy notice and lawful basis (e.g. feeding client data into public ChatGPT).
  - Replacing human judgement on ethics, safeguarding, or high-stakes risk — use AI to assist, not to decide.
- **Do use AI for**:
  - Drafting, summarising, and brainstorming (with no personal data in the prompt unless you’ve assessed and documented it).
  - Helping structure risk assessments and controls — then **you** validate and own the output.
- **Rule of thumb** — If you wouldn’t let a junior analyst decide alone, don’t let the AI decide alone. Document when and how you use AI so you can explain it later.

---

## Review Cadence

- **Access** — At least annually (or on joiner/mover/leaver): who has access to what; remove what’s no longer needed.
- **Policies and decision log** — At least annually: are they still accurate? Any gaps?
- **Risk register** — When something significant changes (new service, incident, regulatory change) and at least annually.
- **Incident response** — After any incident: update playbooks and controls; share lessons (anonymised) if useful.

---

## How to use this

- Adopt as-is or trim to your size. The goal is **defensible**, not perfect.
- When you grow or take on GRC training (e.g. GRC Mastery), plug in new concepts (e.g. formal risk taxonomy, control frameworks) and refine. The timeline — “we started here, we improved here” — is itself evidence of maturity.
