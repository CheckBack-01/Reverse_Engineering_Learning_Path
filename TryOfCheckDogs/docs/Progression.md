# Progression — Metrics & Status (TOCD + CSF Track)

**Plan coverage:** 2025-10-01 → 2027-09-30 (24 months)
**Cadence:** ~30 hrs/week (5 hrs/day, Mon–Sat)
**Mixing rule:** I never carry **two** courses/certifications at the same time; **only** 1 course/cert **+ TOCD**.
**Pacing change:** starting **2026-03-01** (month 6) **TOCD = 2.5 h/day** and **course/cert = 2.5 h/day** (except BB Sprint: TOCD → backlog 30–45 min/week).

**Legend:** ☐ Not started · ◐ In progress · ✔ Done

---

### Global counters (target / current)

* **CPP-R (closed):** target ≥ **16** by 2027-09-30 · current: 0
* **PAD (closed):** target ≥ **8** · current: 0
* **MJT (closed total):** target ≥ **4** · current: 0

  * MJT-T (by topic) ≥ 2 · current: 0
  * MJT-B (by block) ≥ 2 · current: 0
* **Evidence with link** (`evidence/` + **VALIDSIG**): target ≥ **24** · current: 0
* **Bug Bounty (submissions):** target **14–18** (Sprint **2026-09 → 2026-12**) · accepted target **≥ 6–8** · current: 0
* **Accumulated credits (Sophia/CSF/Exams):** target **24–36** (base) · **30–48** with exams · current: 0

  * Sophia (4 courses) → **~12 cr**
  * SANS CSF (3 courses) → **~12 cr**
  * CLEP/DSST (1–2 optional exams) → **+6–12 cr**

**Certifications (target / status):**

* **MITRE MAD20 Basic:** 1 · ☐
* **TCM PMRP:** 1 · ☐
* **GIAC GFACT (via CSF/SEC275):** 1 · ☐

---

### Quality metrics (OKRs)

* **MJT-T triage:** target ≤ **30 min** · current: —
* **MJT-B triage:** target ≤ **60 min** · current: —
* **Hypotheses confirmed/corrected:** target ≥ **70%** · current: —
* **Evidence completeness:** target **100%** (`run.log`, `manifest`, hashes, bounds) · current: —
* **Tooling per MJT:** target ≥ **1 script** · current: —
* **A ratio across last 5 deliveries (CPP-R/PAD/MJT):** target ≥ **60%** A, ≤ **10%** Redo · current: —

---

### Milestones (gates) and decisions

* **2026-06-30:** 4 **Sophia** courses → move to **MAD20/PMRP/BB Gap**.
* **2026-10-31:** **MAD20** completed (badges).
* **2026-11-30:** **PMRP** completed (5d + 2d report).
* **2026-12-31:** **BB Sprint** closes → start **SANS CSF** (01-Jan-2027).
* **2027-03-31:** **CSF Course 1** completed.
* **2027-06-30:** **CSF Course 2** completed (if credits are short, consider **1 CLEP/DSST**).
* **2027-09-30:** **CSF Course 3/SEC275 + GFACT** completed; **dossier and active applications**.

---

### Quarterly view (CPP-R/PAD/MJT + accredited track)

### Q1 — 2025-10-01 → 2025-12-31 · **Phase A (start) — Intensive TOCD (5 h/day)**

| Block | Title                      | CPP-R | PAD | MJT-T | MJT-B | Status | Notes                      |
| ----- | -------------------------- | ----: | --: | ----: | ----: | ------ | -------------------------- |
| 0B01  | Linux/CLI/Bash & Ecosystem |     0 |   0 |     0 |     0 | ◐      | Upcoming CPP-R/MJT windows |
| 1B01  | Toolchain, Debugging & VCS |     0 |   0 |     0 |     0 | ☐      | Test plan with sanitizers  |

**Q1 objective:** 3–4 **CPP-R**.

---

### Q2 — 2026-01-01 → 2026-03-31 · **Phase A (cont.) — TOCD 5 h/day (Jan–Feb) → 2.5 h/day + Sophia (Mar)**

| Block | Title               | CPP-R | PAD | MJT-T | MJT-B | Status | Notes                    |
| ----- | ------------------- | ----: | --: | ----: | ----: | ------ | ------------------------ |
| 2B01  | Systems C I (start) |     0 |   0 |     0 |     0 | ☐      |                          |
| 3B01  | Systems C I (close) |     0 |   0 |     0 |     0 | ☐      |                          |
| 4B01  | x86_64 / ABI / ASM  |     0 |   0 |     0 |     0 | ☐      | **LD_PRELOAD** hook (BT) |

**Accredited track (Sophia):** **Intro to Python** (Mar).
**Q2 objective:** 3–4 additional **CPP-R** + **1 Sophia course**.

---

### Q3 — 2026-04-01 → 2026-06-30 · **Phase A (close) + Sophia (2.5 h) / TOCD (2.5 h)**

| Block | Title                                     | CPP-R | PAD | MJT-T | MJT-B | Status | Notes               |
| ----- | ----------------------------------------- | ----: | --: | ----: | ----: | ------ | ------------------- |
| 5B01  | Linking/Loading (ELF/PLT/GOT/LD_PRELOAD)  |     0 |   0 |     0 |     0 | ☐      |                     |
| 6B01  | Windows & PE Fundamentals                 |     0 |   0 |     0 |     0 | ☐      | Basic PE viewer     |
| 7B01  | Intro to Malware Analysis (Triage & IOCs) |     0 |   0 |     0 |     0 | ☐      | YARA-lite + harness |

**Sophia:** Apr: **Relational DBs** · May: **Networking** · Jun: **Algebra.**
**Q3 objective:** 3 Sophia courses (total **4/4 ≈ 12 cr**) + **1–2 CPP-R**.

---

### Q4 — 2026-07-01 → 2026-09-30 · **Phase B (start) — TOCD 2.5 h + Cert prep (Jul–Aug); BB Sprint starts in Sep**

| Block | Title               | CPP-R | PAD | MJT-T | MJT-B | Status | Notes                                 |
| ----- | ------------------- | ----: | --: | ----: | ----: | ------ | ------------------------------------- |
| 0B04  | Applied Reversing I |     0 |   0 |     0 |     0 | ☐      | Loader + harness; reproducible unpack |

**Cert/BB track:**

* **Jul–Aug:** Cert prep & portfolio (2.5 h) + **TOCD 2.5 h**.
* **Sep:** **MAD20** (2.5 h) + **Bug Bounty** (2.5 h); **TOCD → backlog**.

**Q4 objective:** Progress on 0B04 + partial **MAD20 badges** + **4–6 BB submissions** (Sep).

---

### Q5 — 2026-10-01 → 2026-12-31 · **Phase B (operational pause) — BB Sprint + MAD20/PMRP**

| Track            | Item                        | Target             | Status | Notes                          |
| ---------------- | --------------------------- | ------------------ | ------ | ------------------------------ |
| Bug Bounty       | Total submissions (Oct–Dec) | **10–12**          | ☐      | 2.5 h/day BB, **CPP-R** report |
| MAD20            | Certification               | **Passed**         | ☐      | Oct (full badges)              |
| PMRP             | Certification               | **Passed**         | ☐      | Nov (5d + 2d report)           |
| TOCD             | Backlog                     | **30–45 min/week** | ☐      | Script/drill maintenance       |
| BB consolidation | December                    | **14–18 total**    | ☐      | **6–8 “star” reports**         |

**Q5 objective:** close **MAD20 + PMRP** and the BB Sprint.

---

### Q6 — 2027-01-01 → 2027-03-31 · **Phase B (cont.) — TOCD 2.5 h + SANS CSF (Course 1, 2.5–3 h)**

| Block/Track | Title                            | CPP-R | PAD | MJT | Status | Notes                            |
| ----------- | -------------------------------- | ----: | --: | --: | :----: | -------------------------------- |
| 1B04        | Deep PE & In-Memory Loaders      |     0 |   0 |   0 |    ☐   | Parser/loader/manual map (intro) |
| 2B04        | Userland Execution & Mitigations |     0 |   0 |   0 |    ☐   | Comparisons DEP/ASLR/CFG         |
| CSF         | **Course 1**                     |     — |   — |   — |    ☐   | 01-Jan-27 → 31-Mar-27            |

**Q6 objective:** **CSF C1** completed + **1–2 CPP-R**.

---

### Q7 — 2027-04-01 → 2027-06-30 · **Transition F2→F3 + SANS CSF (Course 2)**

| Track        | Item                  | Target              | Status | Notes                 |
| ------------ | --------------------- | ------------------- | ------ | --------------------- |
| CSF          | **Course 2**          | **Completed**       | ☐      | 01-Apr-27 → 30-Jun-27 |
| TOCD         | Monthly reinforcement | **1 CPP-R/month**   | ☐      |                       |
| Exams (opt.) | **CLEP/DSST #1**      | **Passed** (3–6 cr) | ☐      | Micro-window (1 day)  |

**Q7 objective:** **CSF C2** + (opt.) **1 CLEP/DSST**.

---

### Q8 — 2027-07-01 → 2027-09-30 · **Phase C (start) + CSF (Course 3/SEC275)**

| Track      | Item                          | Target        | Status | Notes                        |
| ---------- | ----------------------------- | ------------- | ------ | ---------------------------- |
| CSF        | **Course 3 / SEC275 (GFACT)** | **Completed** | ☐      | 01-Jul-27 → 30-Sep-27        |
| Portfolio  | **Total CPP-R**               | **≥ 16**      | ☐      | Labs/BB with evidence        |
| Employment | **Applications/month**        | **10–15**     | ☐      | Contracts/FT (remote/global) |

**Q8 objective:** **CSF complete (~12 cr) + GFACT + dossier**.

---

### Credits (tracker)

* **Sophia:** 4 courses (~12 cr) → ☐ ☐ ☐ ☐
* **SANS CSF:** Course 1 → ☐ · Course 2 → ☐ · Course 3/SEC275 → ☐
* **CLEP/DSST (opt.):** Exam #1 → ☐ · Exam #2 → ☐

**Expected total by 2027-09-30:**

* **Base:** **24 cr** (Sophia ~12 + CSF ~12)
* **With exams (opt.):** **30–48 cr** (depending on 1–2 CLEP/DSST)

---

### Closure checklist (per item)

1. **Status:** ☐ → ◐ → ✔
2. **Counters:** update CPP-R/PAD/MJT/Credits/Certs/BB
3. **Standard links:**

   * Labs: `phases/Fx_NAME/<block>/<lab>/`
   * Evidence: `cpp/evidence/<YYYYMMDD_HHMM>/`
   * PAD: `phases/Fx_NAME/<block>/PAD/<YYYY-MM-DD>/`
   * MJT: `phases/Fx_NAME/<block>/MJT_{T|B|Post}_<YYYY-MM-DD>/`
4. **Clear commit:**

   * `feat(cpp-r): close CPP-R-<id> (<block>) + evidence`
   * `feat(pad): finalize PAD-<id> (<block>)`
   * `feat(mjt): close MJT-<type> (<block>) + run.log + manifest`

---

### Operational notes

* **TOCD during BB Sprint:** backlog 30–45 min/week (drills + script maintenance).
* **Minimum acceptable evidence:** `cpp_run.sh` (1 command), `manifest.json`, `run.log`, `checksums.txt`, screenshots (if applicable), **VALIDSIG**.
* **OPSEC:** 100% lab-only; **benign** datasets/artifacts; no external network in final runs.
