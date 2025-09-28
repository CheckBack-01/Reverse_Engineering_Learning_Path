# PLAN — Try Of Check Dogs (TOCD)

### 1) **Personal Statement**

I want to become a **Reverse Engineer / Malware Analyst** with mastery of **defense evasion** and the ability to **create and break controls** on **Windows and Linux** at a low level.
My career begins with **structured self-education (TOCD)** and a **stack of accredited credentials** that yield **valid U.S. college credit** and a **signal recognized by HR**. I prioritize **offensive reversing**, **measurable evasion**, and the **engineering of benign adversary-emulation tools** for the lab. My **methods and conventions** live in this repository.

---

### 2) Principles

* **Lab-only:** VM with **NAT**, **snapshots**, and tested **rollback**; **benign** artifacts; zero out-of-scope traffic.

* **Reproducible or it doesn’t exist:** every exercise closes with **one-command CPP-R** (`cpp_run.sh`) + `manifest.json` + `evidence/` (includes `run.log`, `checksums.txt`) and **GPG signature (VALIDSIG)**.

* **Encrypted statements:** Encrypted Mission Protocol.

* **Time with intent:** 70–80% hands-on; minimum enabling theory.

---

### 3) Why **accredited programs** (and not “standalone courses”)

1. They are **valid in the U.S.** (ACE / university transcript / CAE-CD).
2. They **satisfy prerequisites** (e.g., **≥48 credits** for SANS ACS).
3. They improve **HR filters** and preserve the option to **finish a bachelor’s** with what’s already transferred.

---

### 4) Plan map (executive summary)

* **Phase A — Intensive TOCD (5 months, 1-Oct-2025 → 28-Feb-2026)**
  Technical foundation with **reproducible CPP-R**.
  **Why:** measurable foundation and evidence habits.

* **Phase B — Sophia (4 courses) + light TOCD (4 months, 1-Mar-2026 → 30-Jun-2026)**
  _Python, Relational Databases, Networking, Algebra.
  **Why:** ~12 fast, economical credits + fundamentals for tooling/telemetry.

* **Phase C — Maturation gap: MAD20 + PMRP + Bug Bounty (6 months, 1-Jul-2026 → 31-Dec-2026)**
  **Jul–Aug:** prep/portfolio · **Sep–Oct:** **MITRE MAD20 Basic** + **Bug Bounty** · **Nov:** **TCM PMRP** + **Bug Bounty** · **Dec:** BB/portfolio consolidation (TOCD backlog 30–45 min/week).
  **Why:** arrive at SANS with practical signal (ATT&CK, malware, reproducible reports) without overlapping loads.

* **Phase D — SANS.edu Cybersecurity Fundamentals Certificate (CSF) + TOCD (9 months, 1-Jan-2027 → 30-Sep-2027)**
  3 **CSF** courses, **one at a time** (≈13 weeks each) + light TOCD.
  **Why:** ~12 SANS credits + **GIAC GFACT** (via SEC275) and CAE-CD branding, without mixing courses/certs.

* **Phase E — Polish + applications (3 months, integrated in Jul–Sep 2027)**
  Close dossier (≥16 CPP-R, ≥8 BB) and **apply**.
  **Why:** go to market with a ready portfolio.

---

### 5) High-level schedule (24 months)

| Period          | Primary focus                          | Hours/day | Secondary focus    | Hours/day | Key deliverables                                                |
| --------------- | -------------------------------------- | --------: | ------------------ | --------: | --------------------------------------------------------------- |
| Oct-25 → Feb-26 | **Intensive TOCD**                     |       5.0 | —                  |         — | 8–10 **CPP-R**                                                  |
| Mar-26 → Jun-26 | **Sophia (4 courses)**                 |       2.5 | **TOCD (light)**   |       2.5 | 4 courses (~12 cr) + 4 **CPP-R**                                |
| Jul-26 → Aug-26 | **Cert prep & portfolio**              |       2.5 | **TOCD (light)**   |       2.5 | Repos, CPP-R templates, BB targets                              |
| Sep-26 → Oct-26 | **MITRE MAD20 Basic**                  |       2.5 | **Bug Bounty**     |       2.5 | ATT&CK badges + 6–8 BB submissions (cumulative)                 |
| Nov-26          | **TCM PMRP**                           |       2.5 | **Bug Bounty**     |       2.5 | PMRP (5d+2d) + BB submissions                                   |
| Dec-26          | **Bug Bounty (consolidation)**         |       2.5 | **TOCD (backlog)** |       2.5 | 14–18 total submissions · 6–8 “star” reports                    |
| Jan-27 → Mar-27 | **SANS CSF — Course 1**                |       3.0 | **TOCD (light)**   |       2.0 | 1 CSF course + 1–2 **CPP-R**                                    |
| Apr-27 → Jun-27 | **SANS CSF — Course 2**                |       3.0 | **TOCD (light)**   |       2.0 | 1 CSF course + 1–2 **CPP-R**                                    |
| Jul-27 → Sep-27 | **SANS CSF — Course 3 (SEC275/GFACT)** |       3.0 | **TOCD (light)**   |       2.0 | **CSF complete (~12 cr, incl. GFACT) + dossier + applications** |

---

### 6) Detailed plan (what, how, why)

### Phase A — Intensive TOCD (1-Oct-2025 → 28-Feb-2026)

* **What I’ll do:** SCs A→B→C; Recon, IDOR/BOLA, XSS/DOM/Template, SSRF/Chains, Logic/CSRF, Automation, Reporting.
* **Deliverables:** 8–10 **CPP-R** with `evidence/` and **VALIDSIG**.
* **KPI:** 2 CPP-R/month + 1 mini triage report.
* **Why:** **measurable, verifiable** technical base.

### Phase B — Sophia (4 courses) + TOCD (1-Mar-2026 → 30-Jun-2026)

* **Courses:** *Introduction to Python Programming*, *Introduction to Relational Databases*, *Introduction to Networking*, *College Algebra*.
* **Deliverables:** 4 courses (~12 cr) + 4 **CPP-R**.
* **KPI:** 1 course/month + 1 CPP-R/month.
* **Why:** **transferable credit** and direct fundamentals (Python, SQL, networking, math base).

### Phase C — MAD20 gap + PMRP + Bug Bounty (1-Jul-2026 → 31-Dec-2026)

* **Jul–Aug:** portfolio prep and polish (2.5 h) + light TOCD (2.5 h).
* **Sep–Oct:** **MITRE MAD20 Basic** (2.5 h) + **Bug Bounty** (2.5 h).
* **Nov:** **TCM PMRP** (2.5 h) + **Bug Bounty** (2.5 h).
* **Dec:** **Bug Bounty** (2.5 h) + **TOCD backlog** (2.5 h).
* **Deliverables:** 14–18 BB submissions, 6–8 “star” reports; PMRP passed; ATT&CK badges.
* **Why:** maximize **practical signal** before SANS and sharpen reproducible reporting.

### Phase D — **SANS CSF** + TOCD (1-Jan-2027 → 30-Sep-2027)

* **Path:** **Course 1 (Jan–Mar)** → **Course 2 (Apr–Jun)** → **Course 3/SEC275 (Jul–Sep)**, **one at a time**.
* **Deliverables:** CSF complete (~12 cr) + **GIAC GFACT** (via SEC275) + 3–4 reinforcing CPP-R.
* **KPI:** 1–2 CPP-R deliverables/month and evidence checklist at 100%.
* **Why:** add **SANS credit** and a **GIAC seal** within the program.

---

### 7) Credits and “SANS-ready”

**Projected totals as of 30-Sep-2027 (ranges):**

* **Sophia (4 courses):** ~12 cr
* **SANS CSF:** ~12 cr
* **CLEP/DSST (optional, 1–2 exams):** +6–12 cr

**Projected total:** **24–36 cr** (without CLEP) · **30–48 cr** (with 1–2 CLEP).
If, at close, credits are still short of 48, I will add **English Composition I/II (Sophia)** or one “anchor” course (UMGC/APU) to cross the threshold.

---

### 8) Why these certifications (minimum rationale per item)

* **MITRE MAD20 Basic:** common ATT&CK and hunting language; modular evidence (badges).
* **TCM PMRP:** **practical** exam with report; fits the **CPP-R** pipeline and triage.
