# Why Cloud Risk Is Mostly Human, Not Technical

**Short explainer — for LinkedIn / Substack**

---

In my view, most cloud breaches aren’t caused by magic exploits or provider outages. They’re caused by **who decided what**, and **who didn’t check**.

- **Misconfiguration** — Someone created a storage account with public access, or left the default region, or never turned on MFA. The tech *allowed* it; a human choice (or non-choice) made it happen.
- **Identity** — Phishing, shared passwords, over-privileged accounts. The platform is fine; access and behaviour aren’t governed.
- **Assumption** — “The cloud is secure” or “Microsoft handles it.” Shared responsibility is clear on paper; in practice, nobody read it, so nobody owned the gap.

That doesn’t mean tech doesn’t matter. I treat encryption, policies, and monitoring as ways to reduce the *surface* of human error. But if I only buy tools and never fix **who decides, who reviews, and who gets told**, the same failures repeat.

**What I take from this for risk and GRC:** I invest in decisions and accountability as much as in controls. I document what I decided and why. I assign owners. I review access and config with the same seriousness I give to “did we patch?” — because in the cloud, I treat *configuration as the new patch*.

---

*Part of [Azure Fundamentals — Risk Notes](../README.md).*
