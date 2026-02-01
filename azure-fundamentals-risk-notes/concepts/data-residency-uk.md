# Data Residency (UK)

## What is this?

**Data residency** is where data is physically stored and processed. In the UK, this matters for law (e.g. UK GDPR, DPA 2018, sector rules), contracts, and public expectation. Azure lets you choose regions (e.g. UK South, UK West); you can keep UK personal data in UK datacentres if you configure services accordingly.

Residency is *not* the same as “who can access it” (that’s access control and jurisdiction of the provider). So “UK region” helps with residency; you still need contracts, access policies, and sub-processor awareness for full compliance.

## Why does it matter for risk, compliance, or people?

- **Compliance** — UK GDPR doesn’t require data to stay in the UK per se, but transfer rules (post-Brexit) and many contracts *do* require it or restrict transfers. Getting region wrong can mean unlawful processing or breach of contract.
- **Risk** — Data in the “wrong” jurisdiction can mean different legal exposure, harder enforcement, and greater reputational and regulatory risk.
- **People** — Data subjects and the public expect “our data stays here” when told so. Violating that expectation damages trust and can trigger complaints and investigations.

## What goes wrong in real life?

- **Default region** — New resources created in a non-UK region (e.g. West Europe) because no one set a default or checked. Discovery happens only at audit or after a breach.
- **Sub-services and replication** — A service may use components or backups in other regions. Without reading the provider’s documentation and terms, you may assume “UK” means “everything UK.”
- **No policy or tagging** — No clear rule (“UK personal data → UK regions only”) and no tagging to detect drift. Dev/test or “quick” workloads end up holding real data in the wrong place.

## Who gets hurt when it goes wrong?

- **Data subjects** — Their data processed or stored in jurisdictions they weren’t told about; loss of control and potential for different (weaker) legal protection.
- **The organisation** — ICO scrutiny, contractual breach, loss of public sector or partner contracts that mandate UK-only residency.
- **Governance and legal** — Remediation (migration, contract renegotiation, disclosure) is costly and stressful; small teams are disproportionately hit.
