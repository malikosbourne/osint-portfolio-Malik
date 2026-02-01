# Shared Responsibility Model

This is how I think about shared responsibility when I’m assessing cloud risk.

## What is this?

In Azure (and most major clouds), security and compliance are **shared** between Microsoft and the customer. Microsoft is responsible for the security *of* the cloud (physical datacentres, host OS, networking, hypervisor). The customer is responsible for security *in* the cloud (identity, data, apps, access control, configuration).

I treat the exact split as depending on the service model (IaaS, PaaS, SaaS): more “managed” means more on Microsoft, more “we run the OS/VM” means more on us.

## Why does it matter for risk, compliance, or people?

- **Risk ownership** — If something goes wrong, “who was supposed to do what?” is decided by this model. I treat blurred lines as leading to disputes, delayed response, and people left without answers.
- **Compliance** — Auditors and regulators (e.g. ICO, sector regulators) expect me to know and document my responsibilities. I treat “the cloud is secure” without mapping my part as a governance failure.
- **People** — Staff and users assume “someone” has secured things. When the model isn’t explained, incidents create confusion, blame, and loss of trust.

## What goes wrong in real life?

- **Assumption that “Azure handles security”** — Defaults are often permissive (e.g. storage accounts, networking). Breaches and data leaks are frequently due to *customer-side* misconfiguration, not Azure outages.
- **No clear RACI** — Teams don’t know who owns patching, encryption, access reviews, or logging. Gaps sit in the “assumed someone else” zone.
- **Contract vs reality** — SLAs and shared-responsibility docs exist, but few people read them. Decisions get made without checking who is actually responsible.

## Who gets hurt when it goes wrong?

- **Data subjects** — Personal or sensitive data exposed because no one owned “security in the cloud” (access, encryption, retention).
- **The organisation** — Regulatory fines, reputational damage, contract breaches. Small orgs and charities are especially vulnerable; they often lack in-house expertise to interpret the model.
- **Staff** — Blame culture when ownership was never clear; burnout when “everyone’s responsible” translates to no one having time or mandate to fix it.
