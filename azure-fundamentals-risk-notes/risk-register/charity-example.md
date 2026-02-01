# Risk Register — Example: UK Charity (Azure Migration)

**Context:** Small UK charity; beneficiary and family data in Azure. I built this as a fictional but realistic example.

**Scale:** I use 1 = Low, 3 = High (likelihood and impact). I adjust the scale to the org when I use this as a template.

---

| # | Risk | Likelihood (1–3) | Impact (1–3) | Controls | Owner |
|---|------|------------------|--------------|----------|--------|
| 1 | Storage account or container created with public access; data discovered by scanner or attacker | 2 | 3 | Azure Policy deny public blob; pre-deployment checklist; review of new storage | IT |
| 2 | Beneficiary data stored in non-UK region; UK residency / contract breach | 2 | 2 | Azure Policy require UK region for tagged resources; tagging standard | DPO / IT |
| 3 | Credential compromise (phishing, reuse); attacker gains access to Azure and data | 2 | 3 | MFA for all; conditional access for privileged roles; no shared accounts | IT |
| 4 | Former staff or contractor retains access after leaving | 2 | 3 | Access review on leaver; quarterly review of RBAC and group membership | DPO / IT |
| 5 | Single person has Owner; they leave or are unavailable; no recovery path | 2 | 3 | Break-glass account and runbook; second person with documented recovery role | COO / IT |
| 6 | No retention or deletion policy; data kept indefinitely; UK GDPR storage limitation breach | 3 | 2 | Document retention by data type; deletion process; review annually | DPO |
| 7 | Ransomware or destructive attack on Azure resources | 1 | 3 | Backup and redundancy; least privilege; monitoring and alerting | IT |
| 8 | Data breach (e.g. misconfiguration or insider); delay in ICO or data subject notification | 2 | 3 | Incident playbook; 72-hour breach assessment; decision log and contact list | DPO / COO |

---

## Notes (how I use this)

- **Owner** — I assign a person or role accountable for the control and for reviewing the risk.
- **Review** — I revisit at least annually or when something significant changes (new service, incident, regulatory change).
- **Residual risk** — After controls, I document what’s left and whether it’s accepted. I log acceptance and review date in the decision log (see [../frameworks/lightweight-grc.md](../frameworks/lightweight-grc.md)).
