# Example Scenario — Initial Analysis (Human Draft)

**Purpose:** My first-pass risk analysis before I ask AI to challenge or extend. This is *my* thinking.

---

## Scenario (one sentence)

A small UK charity moves beneficiary case notes from a shared drive to Azure Blob Storage. One staff member has Owner on the subscription.

---

## Initial risk list (my first pass)

| Risk | Why I think it matters |
|------|------------------------|
| Storage could be created with public access | Defaults in Azure can be permissive; easy to miss. |
| Single Owner = single point of failure | If they leave or are compromised, no clear recovery. |
| No access review | Don’t know who else has access or if it’s still needed. |

---

## What I’m unsure about

- Whether UK region is set by default or must be chosen.
- What “shared responsibility” means in practice for blob storage (encryption, logging).
- Whether the charity has a data processing agreement or just standard Azure terms.

---

## Next step

I will then ask Cursor to: (1) challenge these assumptions, (2) identify missing risks, (3) suggest controls. Then I’ll critique the AI output and write the final assessment.
