# Example Scenario — AI-Assisted Review (Cursor Output)

**Purpose:** I capture the AI’s suggestions here so I can critique them. I don’t accept them blindly — see my final assessment.

---

## Prompt used (summary)

“Review my initial analysis of [charity blob storage scenario]. Challenge my assumptions, identify missing risks, and suggest controls. Be specific to UK/charity context.”

---

## AI output (condensed)

**Challenges to my assumptions:**
- UK region is *not* default; West Europe often is. So “could be wrong region” is a real risk, not just theoretical.
- Shared responsibility: Microsoft handles physical security and platform encryption at rest; *I* (or the charity) handle access control, key management if we bring our own key, and logging/alerting. So “who does what” needs to be explicit.

**Missing risks:**
- No retention or deletion policy → data kept indefinitely; UK GDPR “storage limitation” and subject access/erasure harder.
- No backup/disaster recovery thought → if blob is deleted or corrupted, no recovery path.
- Service principal or automation account with broad access → if key is leaked, same as “single Owner” problem at scale.
- No breach playbook → if something is exposed, delay in containment and ICO notification.

**Suggested controls:**
- Azure Policy: deny public blob, require UK region for resources tagged “personal-data”.
- Require MFA and conditional access for anyone with Owner/Contributor.
- Access review quarterly; remove leavers promptly.
- Enable diagnostic and audit logs; alert on sensitive container access or permission changes.
- Document decision (region, retention) in decision log; document incident response steps.

---

## My quick critique of the AI output (before final assessment)

- **Useful:** Region point was right; I’d underplayed it. Retention and backup are real gaps. Policy and access review are appropriate.
- **Overkill for “first pass”?** Incident playbook and logging are right, but for a tiny charity “quarterly access review” might be “when someone leaves” in practice — I’ll note proportionality in final.
- **Missing from AI:** Cost of controls (Policy, logging, alerting can add cost); who *owns* the decision log and IR in a small team. I’ll add that in final.

---

*Next: [example-scenario_final_assessment.md](example-scenario_final_assessment.md)*
