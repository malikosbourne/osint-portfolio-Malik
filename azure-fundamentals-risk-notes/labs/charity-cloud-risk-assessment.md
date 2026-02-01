# Paper Lab: Charity Cloud Risk Assessment

**Scenario:** A UK charity migrates to Azure. They store sensitive family data (beneficiaries, case notes, contact details). What could go wrong?

This is a **scenario-based paper lab** — no paid Azure labs required. It mirrors real GRC work: assets, threats, vulnerabilities, controls, residual risk, and governance failures.

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

**Why this matters for risk:** You can’t protect what you haven’t named. Listing assets forces clarity on what “sensitive family data” actually is and who cares about it.

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

**Why this matters:** Threats are *what might happen*. They feed into “what goes wrong in real life” and who gets hurt — see concept and threat-scenario notes.

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

**Why this matters:** Vulnerabilities are *why* threats might succeed. Fixing them is where controls come in.

---

## 5. Controls

| Control | What we do | Intended to address |
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

**Why this matters:** Controls reduce likelihood or impact. They need to be proportionate (see Lightweight GRC) and owned by someone.

---

## 6. Residual Risk

After controls:

- **Misconfigured storage** — Residual risk: Low–Medium if Policy and review are in place; Medium if not enforced or bypassed (e.g. exceptions without approval).
- **Credential compromise** — Residual risk: Medium (MFA and conditional access reduce but don’t eliminate phishing and social engineering).
- **Insider misuse** — Residual risk: Low–Medium with access reviews and least privilege; higher if reviews are skipped or delayed.
- **Data in wrong region** — Residual risk: Low if Policy and tagging are used; Medium if creation is ad hoc and unchecked.
- **Loss of access** — Residual risk: Low if runbooks and break-glass are documented and tested; Medium if single point of failure remains.

**Acceptance:** The charity should explicitly accept residual risks (e.g. “We accept Medium residual risk on credential compromise and will revisit after MFA and conditional access are fully rolled out”). Document in decision log or risk register.

---

## 7. Governance Failures (what often goes wrong in real life)

- **No one owns “risk in the cloud”** — Migration is led by cost or convenience; shared responsibility and compliance are not clearly assigned. Result: gaps and finger-pointing when something fails.
- **No risk intake before migration** — Azure is adopted without “what data, where, who has access, what could go wrong?” Result: sensitive data in wrong region or with wrong permissions.
- **Policies exist but aren’t enforced** — Azure Policy or internal policies are written but not deployed or not reviewed. Result: drift and misconfiguration.
- **Access and leavers not reviewed** — No process to remove access when people leave or change roles. Result: former staff or contractors still have access.
- **Incident response not tested** — No playbook or no run-through. Result: delay and confusion when a real incident happens; possible breach notification delay.
- **“We’re too small for governance”** — Decision to skip documentation and review. Result: when something goes wrong, no evidence of due diligence; regulators and funders ask “what did you do to prevent this?”

**Why this matters:** Governance failures are *how* good intentions don’t turn into real control. Naming them helps the charity (and you) focus on process and accountability, not just technology.

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

*This lab is a **paper** exercise. In a real engagement, you’d validate against the actual tenant (subscriptions, policies, identities) and update with findings. Use it to demonstrate structured thinking and GRC literacy.*
