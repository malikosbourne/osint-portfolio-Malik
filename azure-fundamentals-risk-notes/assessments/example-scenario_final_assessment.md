# Example Scenario — Final Assessment (Human-Led, AI-Informed)

**Purpose:** My definitive risk assessment after critiquing the AI. 

---

## Scenario (unchanged)

A small UK charity moves beneficiary case notes from a shared drive to Azure Blob Storage. One staff member has Owner on the subscription.

---

## Final risk list (with likelihood/impact and owner)

| Risk | Likelihood | Impact | Owner (to assign) |
|------|------------|--------|-------------------|
| Storage created with public access or wrong region | Medium | High | IT / DPO |
| Single Owner — compromise or departure | Medium | High | COO / IT |
| No access review — stale or over-broad access | Medium | High | DPO / IT |
| No retention/deletion policy — storage limitation breach | High | Medium | DPO |
| No backup/DR — data loss or corruption | Low | High | IT |
| No breach playbook — delay in containment and notification | Medium | High | DPO / COO |

---

## Controls I’m recommending (proportional to small charity)

1. **Azure Policy** — Deny public blob; require UK region for any resource tagged `personal-data`. (Assign owner: IT.)
2. **Identity** — MFA required for all; no shared Owner account; at least one other person with break-glass path documented. (Owner: IT.)
3. **Access** — Review who has access when someone leaves; aim for “at least annually” if no leavers. (Owner: DPO / IT.)
4. **Retention** — Document how long case notes are kept and how they’re deleted; add to decision log. (Owner: DPO.)
5. **Backup** — Confirm whether blob redundancy (e.g. LRS/GRS) is enough or if backup copy is needed; document. (Owner: IT.)
6. **Incident response** — One-page playbook: who to call, what to do (contain, assess, notify ICO if breach), where to log. (Owner: DPO / COO.)

---

## What I took from the AI and what I changed

- **Took:** Region not default (real risk); retention and backup as gaps; Policy and access review as controls; need for decision log and IR basics.
- **Changed:** Kept “quarterly” as “when someone leaves or at least annually” for proportionality. Added explicit “owner” per control so a small team knows who’s responsible. Noted cost/effort so the charity can decide what to do first.

---

## Residual risk and acceptance

- **Residual risk:** Medium for “misconfiguration” and “single point of failure” until Policy and break-glass are in place; Low–Medium after.
- **Acceptance:** Charity should explicitly accept residual risk and set a review date (e.g. after Policy is deployed and playbook drafted). Log in decision log.

---


