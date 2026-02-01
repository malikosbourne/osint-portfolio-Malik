# Threat Scenario: Identity and Access Failure

## What is this?

Failure of identity and access management (IAM) in Azure: wrong people have access, right people lose it, or access is not reviewed and revoked when roles change. This includes Azure AD (Entra ID) users and groups, service principals, role assignments (RBAC), and conditional access. “Identity is the new perimeter” — when it’s weak or poorly governed, everything else is at risk.

## Why does it matter for risk, compliance, or people?

- **Risk** — Over-privileged accounts are the main path for insiders and attackers (credential theft, phishing). Under-privilege causes outages and risky workarounds (sharing admin logins, local bypasses).
- **Compliance** — Principle of least privilege and access review are explicit in UK GDPR and many frameworks (e.g. NCSC, CIS). Auditors expect evidence of who has access, why, and when it was last reviewed.
- **People** — Staff suffer when they can’t do their job (access denied) or when they’re given more power than they need and then blamed when something goes wrong. Data subjects are hurt when their data is accessed inappropriately.

## What goes wrong in real life?

- **No access reviews** — Joiner/mover/leaver process doesn’t sync with Azure. Former staff or contractors retain access for months or years.
- **Subscription-wide Owner** — “Easier” to give everyone Owner or Contributor at subscription level. One compromised account or careless act affects everything.
- **Shared accounts and break-glass** — “Admin” account shared by the team; no individual accountability. Break-glass or emergency accounts used for routine work and never rotated.
- **Service principals forgotten** — Automation or integration accounts created with broad rights and never reviewed; when the person who created them leaves, no one knows what they can access.
- **MFA and conditional access weak or off** — Especially for privileged roles; phishing or password reuse leads to full takeover.

## Who gets hurt when it goes wrong?

- **Data subjects** — Unauthorised access to their data (viewing, exfiltration, alteration). Loss of confidentiality and trust; possible harm if data is sensitive (health, safeguarding, finance).
- **The organisation** — Data breach, regulatory action, contract breach (e.g. “only authorised staff”). Recovery and forensics are costly; small orgs may not have the skills to investigate.
- **Staff** — Legitimate users locked out or over-scoped; those who shared credentials or skipped MFA face disciplinary or legal consequences when an incident is traced back.
