# Threat Scenario: Misconfigured Storage Account

I use this scenario when I’m assessing cloud storage risk for orgs holding personal or sensitive data.

## What is this?

An Azure Storage Account (blob, file, queue, table) that is set up with overly permissive access. Common misconfigurations include: public read access on containers, weak or missing encryption, no network restrictions, shared keys used instead of identity-based access, or logging/audit disabled. Attackers and crawlers routinely scan for such accounts.

## Why I focus on this for risk, compliance, or people

- **Risk** — I treat open storage as one of the top causes of cloud data breaches. One “allow public read” or exposed key can expose entire datasets.
- **Compliance** — UK GDPR and sector rules require appropriate technical and organisational measures. I find public blob access with personal data hard to justify and it attracts regulatory attention.
- **People** — Individuals whose data is in the account (beneficiaries, clients, staff) suffer loss of privacy, potential identity harm, and loss of trust in the organisation.

## What I see going wrong in real life

- **Defaults accepted** — New storage account created under time pressure; “public access” left enabled or not explicitly set to “disabled.” No one re-checks.
- **“Temporary” becomes permanent** — A container opened for a one-off share or migration and never locked down. Discovered months later by a scanner or auditor.
- **No baseline or policy** — No Azure Policy or landing zone to enforce “no public blob,” so every subscription or project can drift.
- **Keys in code or docs** — Connection strings or storage keys committed to repos or stored in wikis; keys rotated only after a breach or audit finding.

## Who I see getting hurt when it goes wrong

- **Data subjects** — Personal data (names, addresses, case notes, documents) exposed. Risk of fraud, discrimination, or embarrassment. Possible ICO complaints and redress.
- **The organisation** — Breach notification, ICO investigation, potential fines and corrective measures. Reputational damage; for charities, loss of donor and beneficiary trust.
- **Staff** — Blame, stress, and extra workload during incident response and remediation. For small teams, long-term impact on morale and retention.
