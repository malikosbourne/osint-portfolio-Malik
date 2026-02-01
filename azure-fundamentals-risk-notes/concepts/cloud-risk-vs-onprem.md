# Cloud Risk vs On-Premises

This is how I think about risk when an org moves from on-prem to cloud.

## What is this?

A comparison of how risk *shifts* when an org moves from on-premises infrastructure to the cloud. Same high-level goals (confidentiality, integrity, availability, privacy), but different *who*, *where*, and *how*. I treat control as moving from “we own the tin” to “we own configuration, identity, and data; the provider owns the platform.”

## Why does it matter for risk, compliance, or people?

- **Risk, compliance** — Regulators and auditors care about *outcomes*, not where the server sits. I must show that I understand where control and risk sit in the cloud and that I’ve designed controls accordingly (e.g. data residency, access, encryption).
- **People** — Migrations often happen without explaining “what’s different.” Staff may over-trust (“it’s in the cloud, it’s safe”) or under-trust (“we’ve lost control”). Both lead to misuse or workarounds that increase risk.

## What goes wrong in real life?

- **Treating cloud like a black box** — “We don’t need to patch; Microsoft does.” Partially true for PaaS, but I treat identity, data classification, and access as still on the customer. Misconfigurations (open storage, weak IAM) are the main cause of real-world cloud incidents I see.
- **On-prem habits in the cloud** — Hard-coded IPs, no automation, manual “who has access” lists. In the cloud, I find scale and API-driven change make those practices unmanageable and unsafe.
- **Underestimating shared responsibility** — Assuming compliance “travels” with the provider. It doesn’t; I treat the customer as remaining accountable for how they use the service and what data they put where.

## Who gets hurt when it goes wrong?

- **Data subjects and beneficiaries** — e.g. charity clients, patients, citizens. Their data can end up in wrong regions, exposed by misconfiguration, or over-shared because access wasn’t re-evaluated post-migration.
- **Small orgs and charities** — Often lack cloud literacy. They adopt Azure for cost or “modernisation” but don’t reassess risk; one misstep can mean regulatory action or loss of donor/constituent trust.
- **Operations and security teams** — Stuck between “business wants cloud” and “we don’t have the skills to secure it,” leading to stress and turnover when incidents occur.
