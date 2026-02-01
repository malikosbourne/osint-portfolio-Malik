# Paper Lab: Charity Cloud Risk Assessment

**Scenario:** A UK charity migrates to Azure. They store sensitive family data (beneficiaries, case notes, contact details). What could go wrong?

**Why I did this:** Small charities are increasingly pushed toward cloud without the governance maturity or resources of large organisations. I wanted to explore the risks that creates for beneficiaries, staff, and trust — through a GRC lens focused on people, not just systems.

This is a **scenario-based paper lab** I ran myself (no paid Azure labs). I structured it as assets, threats, vulnerabilities, controls, residual risk, and governance failures. I drew loosely on ISO 27001 and NIST risk assessment principles, adapted for small UK charities.

---

## 1. Context

- **Organisation** — UK charity, small team (~15 FTE), limited in-house IT. Moving from on-prem/file-share to Azure (Storage, Entra ID, possibly Microsoft 365).
- **Data** — Family and beneficiary data: names, addresses, contact details, case notes, sometimes safeguarding or health-related information.
- **Driver for cloud** — Cost, remote working, “modernisation,” and pressure from funders/partners to use “secure” platforms.

---

## 2. Assets

| Asset | Description | Sensitivity | Owner (conceptually) |
|-------|-------------|-------------|----------------------|
| Beneficiary and family records | Personal data, case notes, contact details | High (UK GDPR; possible safeguarding) | Programmes / DPO |
| Staff identities and access | Azure AD accounts, RBAC, MFA state | High (keys to the kingdom) | IT / COO |
| Case management data in Azure Storage | Documents, spreadsheets, backups | High | Programmes |
| Configuration and secrets | Storage keys, app config, connection strings | High | IT |
| Logs and audit trail | Who did what, when | Medium (needed for compliance and IR) | IT / DPO |

**Why I start here:** I need to name assets before I can protect them. Listing them forces me to be clear about what “sensitive family data” actually is and who owns it.

---

## 3. Threats

| Threat | Description | Likelihood (initial) | Impact |
|--------|-------------|----------------------|--------|
| Misconfigured storage (public or over-permissive) | Blob container or account left open; discovered by scanner or attacker | Medium | High — data breach, ICO, loss of trust |
| Credential compromise (phishing, reuse) | Staff or service account credentials stolen; used to access Azure and data | Medium | High — full access to data and systems |
| Insider misuse | Current or former staff/contractor accesses or exfiltrates data inappropriately | Low–Medium | High — harm to beneficiaries, regulatory and reputational damage |
| Ransomware or destructive attack | Azure resources or data encrypted or deleted | Low–Medium | High — operational and data loss |
| Data in wrong region | Resources created in non-UK region; UK residency/compliance violated | Medium | Medium — contract breach, ICO interest |
| Loss of access (admin departure, misconfiguration) | Key person leaves or access revoked incorrectly; no recovery path | Medium | Medium — operational disruption, possible data loss |
| Sub-processor or provider incident | Microsoft or downstream provider breach or outage | Low | Depends on scope — contract and shared responsibility matter |

**Why I map these:** I treat threats as *what might happen*. I then use them to think through what goes wrong in real life and who gets hurt — I reference my concept and threat-scenario notes for this.

---

## 4. Vulnerabilities

| Vulnerability | What’s weak or missing | Links to threat |
|---------------|------------------------|-----------------|
| No default “deny public” and no Azure Policy | New storage accounts can be created with public access or weak settings | Misconfigured storage |
| Weak identity hygiene | No regular access reviews; shared or stale accounts; MFA not enforced for privileged users | Credential compromise, insider misuse |
| No clear data classification and tagging | Don’t know which data is “sensitive family” vs generic; can’t enforce “UK only” or encryption by sensitivity | Data in wrong region, over-permissioned access |
| Lack of logging and alerting | Few or no alerts on sensitive data access, permission changes, or anomalies | Delayed detection of misuse or breach |
| No documented runbooks or break-glass | Single person knows admin; no handover or recovery process | Loss of access |
| Contract and shared-responsibility not read | Don’t know exactly what Microsoft does vs what the charity must do | Misalignment with compliance and incident response |
| Small team, no dedicated security | Governance and security are “everyone’s job” and often deferred | All of the above |

**Why I list these:** I treat vulnerabilities as *why* threats might succeed. I then must address them with controls.

---

## 5. Controls

| Control | What I would do / recommend | Intended to address |
|---------|------------|----------------------|
| Azure Policy: deny public blob, require UK region for sensitive workloads | Prevent public storage; enforce region at deploy time | Misconfigured storage, data residency |
| Entra ID: MFA required for all; conditional access for privileged roles | Reduce impact of credential theft | Credential compromise |
| Access reviews (quarterly or on joiner/mover/leaver) | Remove unnecessary access; catch leavers | Insider misuse, credential creep |
| Least privilege RBAC | No subscription-wide Owner for day-to-day; scoped roles | Insider misuse, blast radius of compromise |
| Classification and tagging | Tag resources with data type (e.g. “personal-data-uk”); use for policy and monitoring | Data residency, access control |
| Logging and alerting | Enable diagnostic and audit logs; alert on sensitive data access, permission changes, sign-in anomalies | Detection and response |
| Decision log and risk register | Log “we use UK South for family data”; keep risk register updated | Governance, audit, accountability |
| Incident response playbook | Who to call, what to do (contain, assess, notify ICO if breach), how to record | Any breach or serious incident |
| Training and awareness | Staff know: no public storage, no sharing credentials, report odd emails | Phishing, misuse, misconfiguration |

**Why I chose these:** I use controls to reduce likelihood or impact. I keep them proportionate (see my Lightweight GRC draft) and I assign an owner to each.

---

## 6. Residual Risk

After applying the controls above, I assess residual risk as follows:

- **Misconfigured storage** — Low–Medium if Policy and review are in place; I would rate it Medium if not enforced or bypassed (e.g. exceptions without approval).
- **Credential compromise** — Medium: MFA and conditional access reduce but don’t eliminate phishing and social engineering.
- **Insider misuse** — Low–Medium with access reviews and least privilege; I would rate it higher if reviews are skipped or delayed.
- **Data in wrong region** — Low if Policy and tagging are used; Medium if creation is ad hoc and unchecked.
- **Loss of access** — Low if runbooks and break-glass are documented and tested; Medium if a single point of failure remains.

**What I would recommend:** I would advise the charity to explicitly accept residual risks (e.g. “We accept Medium residual risk on credential compromise and will revisit after MFA and conditional access are fully rolled out”) and to document that in the decision log or risk register.

---

## 7. Governance Failures (what often goes wrong in real life)

- **No one owns “risk in the cloud”** — Migration is led by cost or convenience; shared responsibility and compliance are not clearly assigned. Result: gaps and finger-pointing when something fails.
- **No risk intake before migration** — Azure is adopted without “what data, where, who has access, what could go wrong?” Result: sensitive data in wrong region or with wrong permissions.
- **Policies exist but aren’t enforced** — Azure Policy or internal policies are written but not deployed or not reviewed. Result: drift and misconfiguration.
- **Access and leavers not reviewed** — No process to remove access when people leave or change roles. Result: former staff or contractors still have access.
- **Incident response not tested** — No playbook or no run-through. Result: delay and confusion when a real incident happens; possible breach notification delay.
- **“We’re too small for governance”** — Decision to skip documentation and review. Result: when something goes wrong, no evidence of due diligence; regulators and funders ask “what did you do to prevent this?”

**Why I call these out:** I treat governance failures as *how* good intentions don’t turn into real control. Naming them helps me (and would help the charity) focus on process and accountability, not just technology.

---

## 8. Summary Table (for portfolio or interview)

| Element | Summary |
|---------|---------|
| **Assets** | Beneficiary/family data, identities, storage, config, logs |
| **Threats** | Misconfiguration, credential compromise, insider misuse, wrong region, loss of access |
| **Vulnerabilities** | No policy, weak identity hygiene, no classification, no logging, no runbooks, small team |
| **Controls** | Policy (public blob, region), MFA, access reviews, least privilege, tagging, logging, decision log, IR playbook |
| **Residual risk** | Low–Medium depending on control maturity; document acceptance |
| **Governance failures** | No risk owner, no risk intake, policies not enforced, no access review, IR not tested, “too small” mindset |

---

## 9. What I’d do next

**Prioritised next steps**

1. **Immediate** — I would disable public blob access on any existing storage; assign one named person as “risk owner” for cloud; and document a one-page incident playbook (who to call, ICO 72-hour rule, where to log).
2. **Short term (0–3 months)** — I would roll out MFA for all; run a first access review (who has what, remove leavers); and set Azure Policy to deny public blob and require UK region for new resources tagged “personal-data”.
3. **Medium term (3–6 months)** — I would introduce a decision log and lightweight risk register; test break-glass and recovery; and schedule quarterly access review.

**Quick wins vs longer-term controls**

- **Quick wins** — Public blob off, MFA on, one risk owner, one-page IR playbook. I would prioritise these: low cost, high signal to funders and auditors.
- **Longer-term** — Full Policy rollout, tagging standard, logging/alerting, regular access reviews. I would plan these once quick wins are in place; they need time and (optionally) external support.

**Where I’d expect resourcing to be needed**

- **Internal** — I would expect someone (e.g. DPO, COO, or trustee) to own the decision log, risk register, and access reviews. For a ~15 FTE charity, I’d budget 0.1–0.2 FTE or a few hours per month, not a full-time role.
- **External** — In the event that the charity lacks in-house cloud/GRC experience, I would recommend a one-off review of Azure config and policies, or short training on shared responsibility and incident response for the risk owner.

---

*This lab is a **paper** exercise I ran myself. In a real engagement I would validate against the actual tenant (subscriptions, policies, identities) and update with findings.*
