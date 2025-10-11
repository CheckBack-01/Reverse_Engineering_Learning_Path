### Progress - Try Of Check Dogs (TOCD)

**Progress tracking document, metrics, and completed milestones.**

- **Start:** October 9, 2025
- **Current date:**  11-10-2025
- **Target date (job applications):** October 2027
- **Total preparation time:** 24 months

### 1) Executive summary (to date)

| Metric                     | Goal                             | Completed | % |
| -------------------------- | -------------------------------- | --------- | - |
| **Total CPP-Rs**           | 20–26                            | —         | — |
| **Total PADs**             | 5                                | —         | — |
| **BB/CTF Reports**         | 20–25                            | —         | — |
| **Certifications**         | 3 (CCNA, GFACT, MAD20)           | —         | — |
| **Hours invested**         | ~2,880 h (24 months × 30 h/week) | —         | — |
| **Reproducible portfolio** | Public, verifiable               | —         | — |

### 2) Progress by phase

### **Phase 0 — Baseline (9-Oct-2025 → 31-Jan-2026)**

> **Objective:** Operational competence in Linux, Windows, networking, and scripting.

**Target duration:** 4 months (16 weeks)

#### **0B00 — Linux Power User (6 weeks, 9-Oct-2025 → 19-Nov-2025)**

| Item           | Goal | Status  | Due date    | Notes                                          |
| -------------- | ---- | ------- | ----------- | ---------------------------------------------- |
| CPP-R-0B00     | 1    | Pending | 19-Nov-2025 | Automation + inventory script                  |
| PAD-0B00       | 1    | Pending | 20-Nov-2025 | Task orchestrator with logging                 |
| GDP (5 drills) | 5    | Pending | Weekly      | CLI, permissions, processes, Bash, integration |

**Expected metrics:**

* Drill accuracy: ≥90%
* Time: within target
* Evidence: run.log, checksums.txt, manifest.json

**Notes:** —

#### **0B01 — Networking Essentials (6 weeks, 20-Nov-2025 → 31-Dec-2025)**

| Item           | Goal       | Status  | Due date                               | Notes                        |
| -------------- | ---------- | ------- | -------------------------------------- | ---------------------------- |
| CPP-R-0B01     | 1          | Pending | 31-Dec-2025                            | Traffic capture and analysis |
| **CCNA**       | 1          | Pending | 31-Dec-2025                            | Official Cisco certification |
| GDP (5 drills) | 5  Pending | Weekly  | TCP/IP, DNS, Wireshark, iptables, CCNA |                              |

**Expected metrics:**

* CCNA: passed (≥825/1000)
* CPP-R: reproducible on a clean VM
* Traffic analyzed: ≥5 scenarios

**Notes:** —

#### **0B02 — Python for Security (4 weeks, 1-Jan-2026 → 28-Jan-2026)**

| Item           | Goal | Status  | Due date    | Notes                                   |
| -------------- | ---- | ------- | ----------- | --------------------------------------- |
| CPP-R-0B02     | 1    | Pending | 28-Jan-2026 | Recon tool or parser                    |
| CTFs           | 8–12 | Pending | Weekly      | 2–3/week on HTB/THM                     |
| GDP (4 drills) | 4    | Pending | Weekly      | Syntax, libraries, sockets, integration |

**Expected metrics:**

* CPP-R: clean, commented code
* CTFs: documented writeups
* Coverage: ≥80% of concepts

**Notes:** —

#### **0B03 — Windows Administration (4 weeks, 29-Jan-2026 → 25-Feb-2026)**

| Item           | Goal | Status  | Due date    | Notes                                   |
| -------------- | ---- | ------- | ----------- | --------------------------------------- |
| CPP-R-0B03     | 1    | Pending | 25-Feb-2026 | Inventory script + baseline             |
| CTFs           | 8–12 | Pending | Weekly      | Continue 2–3/week                       |
| GDP (4 drills) | 4    | Pending | Weekly      | PowerShell, registry, logs, integration |

**Expected metrics:**

* CPP-R: reproducible on Windows 10 VM
* Baseline: comparable before/after
* Audit: Sysmon integrated

**Notes:** —

**Phase 0 — Summary:**

| Metric | Goal   | Completed | % |
| ------ | ------ | --------- | - |
| CPP-Rs | 4      | —         | — |
| CCNA   | 1      | —         | — |
| CTFs   | 16–24  | —         | — |
| Hours  | ~480 h | —         | — |

---

### **Phase 1 — Eniac (1-Feb-2026 → 31-May-2026)**

> **Objective:** Fundamentals with a Malware Analysis lens.

**Target duration:** 4 months (17 weeks)

#### **2B01–3B01 — Systems-C I (8 weeks, 1-Feb-2026 → 28-Mar-2026)**

| Item                                                         | Goal  | Status  | Due date    | Notes                     |
| ------------------------------------------------------------ | ----- | ------- | ----------- | ------------------------- |
| CPP-R-2B01-1                                                 | 1     | Pending | 1-Mar-2026  | Hexdump (offset + ASCII)  |
| CPP-R-2B01-2                                                 | 1     | Pending | 8-Mar-2026  | Mini binary viewer (mmap) |
| CPP-R-2B01-3                                                 | 1     | Pending | 28-Mar-2026 | Safe binary parser        |
| PAD-2B01                                                     | 1     | Pending | 10-Mar-2026 | Specifications + tests    |
| GDP (Pointers, Dynamic Memory, I/O, Parsing, Error Handling) | 10–15 | Pending | Weekly      | 2–3/week                  |

**Expected metrics:**

* Clean sanitizers (-Wall -Wextra -Werror)
* Coverage: ≥80% (gcov)
* Fuzzing: 20 min without crashes

**Notes:** —

#### **4B01 — x86_64/ABI/ASM (3 weeks, 29-Mar-2026 → 18-Apr-2026)**

| Item                                               | Goal | Status  | Due date    | Notes                        |
| -------------------------------------------------- | ---- | ------- | ----------- | ---------------------------- |
| CPP-R-4B01-1                                       | 1    | Pending | 5-Apr-2026  | Syscall wrapper without libc |
| CPP-R-4B01-2                                       | 1    | Pending | 12-Apr-2026 | C+asm with structs           |
| CPP-R-4B01-3                                       | 1    | Pending | 19-Apr-2026 | Benchmarks asm vs C          |
| PAD-4B01                                           | 1    | Pending | 21-Apr-2026 | Stack diagrams + benchmarks  |
| GDP (ABI, Syscalls, C↔asm, Routines, ABI Contrast) | 8–10 | Pending | Weekly      | 2–3/week                     |

**Expected metrics:**

* Functional asm routines
* Benchmarks: asm 5–10% faster than C
* Clear stack diagrams

**Notes:** —

#### **5B01 — Linking/ELF/PLT/GOT (3 weeks, 19-Apr-2026 → 9-May-2026)**

| Item                                                | Goal | Status  | Due date    | Notes                                |
| --------------------------------------------------- | ---- | ------- | ----------- | ------------------------------------ |
| CPP-R-5B01-1                                        | 1    | Pending | 26-Apr-2026 | ELF parser (headers + symbols)       |
| CPP-R-5B01-2                                        | 1    | Pending | 3-May-2026  | LD_PRELOAD hook (open/fopen)         |
| CPP-R-5B01-3                                        | 1    | Pending | 20-May-2026 | PoC rpath/runpath with patchelf      |
| PAD-5B01                                            | 1    | Pending | 22-May-2026 | Linking architecture + symbol tables |
| GDP (ELF, Linking, Shared Libs, Tooling, PE vs ELF) | 8–10 | Pending | Weekly      | 2–3/week                             |

**Expected metrics:**

* Parser: analyzes ≥90% of binaries
* Hook: intercepts calls without crashes
* Tables: before/after hooking

**Notes:** —

#### **6B01 — Windows & PE Fundamentals (2 weeks, 10-May-2026 → 23-May-2026)**

| Item                                                   | Goal | Status  | Due date    | Notes                         |
| ------------------------------------------------------ | ---- | ------- | ----------- | ----------------------------- |
| CPP-R-6B01-1                                           | 1    | Pending | 24-May-2026 | PE triage (hashes + sections) |
| CPP-R-6B01-2                                           | 1    | Pending | 31-May-2026 | Imports/exports extraction    |
| CPP-R-6B01-3                                           | 1    | Pending | 7-Jun-2026  | Reproducible PE report        |
| PAD-6B01                                               | 1    | Pending | 2-Jun-2026  | Mini PE triage report         |
| GDP (PE Layout, Imports/Exports, Toolchain, Reporting) | 6–8  | Pending | Weekly      | 2–3/week                      |

**Expected metrics:**

* Hash discipline: SHA-256 verified
* Imports: ≥95% correctly extracted
* Report: professional, <2 pages

**Notes:** —

#### **7B01 — Intro to Malware Analysis (1 week, 24-May-2026 → 31-May-2026)**

| Item                                      | Goal | Status  | Due date    | Notes                          |
| ----------------------------------------- | ---- | ------- | ----------- | ------------------------------ |
| CPP-R-7B01-1                              | 1    | Pending | 27-May-2026 | Pipeline strings→YARA→CSV      |
| CPP-R-7B01-2                              | 1    | Pending | 3-Jun-2026  | YARA-lite rules + verification |
| PAD-7B01                                  | 1    | Pending | 5-Jun-2026  | Triage + IOCs + logging        |
| YARA Rules                                | ≥10  | Pending | 31-May-2026 | Functional with FP/FN metrics  |
| GDP (Strings, YARA, Logging, Integration) | 4–6  | Pending | Weekly      | 1–2/week                       |

**Expected metrics:**

* YARA rules: FP ≤ 3%, FN ≤ 10%
* CSV IOCs: normalized, verifiable
* PAD: hypotheses → findings → limits

**Notes:** —

---

**Phase 1 — Summary:**

| Metric     | Goal   | Completed | % |
| ---------- | ------ | --------- | - |
| CPP-Rs     | 6–8    | —         | — |
| PADs       | 2      | —         | — |
| YARA rules | ≥10    | —         | — |
| Hours      | ~510 h | —         | — |


### **Maturation gap (1-Jun-2026 → 30-Nov-2026)**

> **Objective:** Portfolio, certifications, real practice.

#### **Portfolio preparation (Jun–Jul 2026)**

| Item           | Goal  | Status  | Due date    | Notes                        |
| -------------- | ----- | ------- | ----------- | ---------------------------- |
| Polished repos | 2–3   | Pending | 31-Jul-2026 | Clean structure, README      |
| Templates      | 3–5   | Pending | 30-Jun-2026 | CPP-R template, PAD template |
| BB/CTF targets | 10–15 | Pending | 31-Jul-2026 | List of apps/platforms       |

#### **MAD20 + Bug Bounty/CTFs (Aug–Sep 2026)**

| Item                   | Goal                 | Status  | Due date    | Notes                |
| ---------------------- | -------------------- | ------- | ----------- | -------------------- |
| MAD20 Basic            | 1 (modules complete) | Pending | 30-Sep-2026 | ATT&CK badges        |
| Bug Bounty submissions | 6–8                  | Pending | 30-Sep-2026 | Reproducible reports |
| CTFs                   | 16–24                | Pending | Weekly      | 2–3/week             |

**Expected metrics:**

* MAD20: all modules completed
* BB: ≥2 accepted, professional report
* CTFs: writeups in repo

**Notes:** —

#### **GFACT + Bug Bounty/CTFs (Oct–Nov 2026)**

| Item                   | Goal               | Status  | Due date    | Notes                   |
| ---------------------- | ------------------ | ------- | ----------- | ----------------------- |
| GFACT                  | 1 (certification)  | Pending | 30-Nov-2026 | Passed, badge on Credly |
| Bug Bounty submissions | 10–12 (cumulative) | Pending | 30-Nov-2026 | Continue 3+/month       |
| CTFs                   | 20–30 (cumulative) | Pending | Weekly      | 2–3/week                |

**Expected metrics:**

* GFACT: ≥75% (750/1000 points)
* BB: acceptance rate ≥50%
* CTFs: writeup consistency

**Notes:** —

**Gap — Summary:**

| Metric         | Goal   | Completed | % |
| -------------- | ------ | --------- | - |
| MAD20          | 1      | —         | — |
| GFACT          | 1      | —         | — |
| BB submissions | 10–12  | —         | — |
| CTFs           | 20–30  | —         | — |
| Hours          | ~450 h | —         | — |

---

### **Phase 2 — IBM 1401 (1-Dec-2026 → 31-May-2027)**

> **Objective:** Applied Reversing & Userland Execution.

**Target duration:** 6 months (26 weeks)

#### **0B04 — Applied Reversing I (6 weeks, 1-Dec-2026 → 11-Jan-2027)**

| Item         | Goal | Status  | Due date    | Notes                              |
| ------------ | ---- | ------- | ----------- | ---------------------------------- |
| CPP-R-0B04-1 | 1    | Pending | 20-Dec-2026 | Reproducible static report         |
| CPP-R-0B04-2 | 1    | Pending | 27-Dec-2026 | Dynamic traces + evidence          |
| CPP-R-0B04-3 | 1    | Pending | 3-Jan-2027  | Anti-debug bypass                  |
| CPP-R-0B04-4 | 1    | Pending | 10-Jan-2027 | **Reproducible unpack** + IAT      |
| CPP-R-0B04-5 | 1    | Pending | 17-Jan-2027 | Decoder + tests                    |
| CPP-R-0B04-6 | 1    | Pending | 24-Jan-2027 | Final report + methodology         |
| PAD-0B04     | 1    | Pending | 26-Jan-2027 | Complete methodology + screenshots |
| CTFs         | 8–12 | Pending | Weekly      | 1–2/week maintenance               |

**Expected metrics:**

* Unpack: integral binary, functional IAT
* Bypass: ≥3 anti-debug techniques
* Report: technical, reproducible

**Notes:** —

#### **1B04 — Deep PE & In-Memory Loaders (6 weeks, 12-Jan-2027 → 22-Feb-2027)**

| Item         | Goal | Status  | Due date    | Notes                          |
| ------------ | ---- | ------- | ----------- | ------------------------------ |
| CPP-R-1B04-1 | 1    | Pending | 2-Feb-2027  | PE parser (headers/imports)    |
| CPP-R-1B04-2 | 1    | Pending | 9-Feb-2027  | **Local loader** (shellcode)   |
| CPP-R-1B04-3 | 1    | Pending | 16-Feb-2027 | **Manual mapping** intro (DLL) |
| CPP-R-1B04-4 | 1    | Pending | 23-Feb-2027 | Stability report               |
| CPP-R-1B04-5 | 1    | Pending | 2-Mar-2027  | Consolidated loader + tests    |
| PAD-1B04     | 1    | Pending | 4-Mar-2027  | Design + memory diagram        |
| CTFs         | 8–12 | Pending | Weekly      | 1–2/week                       |

**Expected metrics:**

* Loader: stable, no crashes
* Manual mapping: ≥80% imports resolved
* Tests: coverage ≥70%

**Notes:** —

#### **2B04 — Userland Execution & Mitigations (10 weeks, 23-Feb-2027 → 31-May-2027)**

| Item         | Goal  | Status  | Due date    | Notes                              |
| ------------ | ----- | ------- | ----------- | ---------------------------------- |
| CPP-R-2B04-1 | 1     | Pending | 9-Mar-2027  | CRT+LL mode with logging           |
| CPP-R-2B04-2 | 1     | Pending | 16-Mar-2027 | APC mode with evidence             |
| CPP-R-2B04-3 | 1     | Pending | 23-Mar-2027 | **Hollowing PoC** reversible       |
| CPP-R-2B04-4 | 1     | Pending | 30-Mar-2027 | Trace + surface comparison         |
| CPP-R-2B04-5 | 1     | Pending | 6-Apr-2027  | Final comparison (matrix)          |
| CPP-R-2B04-6 | 1     | Pending | 13-Apr-2027 | Test suite + benchmarks            |
| PAD-2B04     | 1     | Pending | 15-Apr-2027 | Integrated mission (≥2 techniques) |
| CTFs         | 12–16 | Pending | Weekly      | 1–2/week                           |

**Expected metrics:**

* Techniques: ≥2 functional, documented
* Comparison: artifact matrix vs mitigations
* Hollowing: benign, reversible, auditable

**Notes:** —

**Phase 2 — Summary:**

| Metric            | Goal                 | Completed | % |
| ----------------- | -------------------- | --------- | - |
| CPP-Rs            | 6–8                  | —         | — |
| PADs              | 2                    | —         | — |
| Functional loader | 1 with ≥2 techniques | —         | — |
| Hours             | ~780 h               | —         | — |

---

### **Phase 3 — Intel 4004 (1-Jun-2027 → 30-Sep-2027)**

**Objective:** Userland Internals & Exploitation.

**Target duration:** 4 months (17 weeks)

#### **0B04 — Process & Memory Internals (4 weeks, 1-Jun-2027 → 28-Jun-2027)**

| Item         | Goal | Status  | Due date    | Notes                             |
| ------------ | ---- | ------- | ----------- | --------------------------------- |
| CPP-R-0B04-1 | 1    | Pending | 21-Jun-2027 | **Process map** (PEB/TEB/modules) |
| CPP-R-0B04-2 | 1    | Pending | 28-Jun-2027 | **PEB/TEB walk** reproducible     |
| CTFs         | 4–6  | Pending | Weekly      | 1–2/week                          |


#### **1B03 — Userland Exploitation I (3 weeks, 29-Jun-2027 → 19-Jul-2027)**

| Item         | Goal | Status  | Due date    | Notes                               |
| ------------ | ---- | ------- | ----------- | ----------------------------------- |
| CPP-R-1B03-1 | 1    | Pending | 12-Jul-2027 | **Educational exploit** (basic ROP) |
| CPP-R-1B03-2 | 1    | Pending | 19-Jul-2027 | **Detection harness**               |
| CTFs         | 3–5  | Pending | Weekly      | 1–2/week                            |


#### **2B04 — Advanced Windows Internals (3 weeks, 20-Jul-2027 → 9-Aug-2027)**

| Item         | Goal       | Status  | Due date   | Notes                           |
| ------------ | ---------- | ------- | ---------- | ------------------------------- |
| CPP-R-2B04-1 | 1          | Pending | 2-Aug-2027 | **Handle map** (Object Manager) |
| CPP-R-2B04-2 | 1          | Pending | 9-Aug-2027 | **Region map** (memory)         |
| CTFs         | 3– Pending | Weekly  | 1–2/week   |                                 |


#### **3B03 — Userland Exploitation II (3 weeks, 10-Aug-2027 → 30-Aug-2027)**

| Item         | Goal | Status  | Due date    | Notes                         |
| ------------ | ---- | ------- | ----------- | ----------------------------- |
| CPP-R-3B03-1 | 1    | Pending | 23-Aug-2027 | **Windows exploit** (ROP/JOP) |
| CPP-R-3B03-2 | 1    | Pending | 30-Aug-2027 | **Linux exploit** (ROP/JOP)   |
| CTFs         | 3–5  | Pending | Weekly      | 1–2/week                      |


#### **4B03 — Heap Exploitation (2 weeks, 31-Aug-2027 → 13-Sep-2027)**

| Item       | Goal | Status  | Due date    | Notes                       |
| ---------- | ---- | ------- | ----------- | --------------------------- |
| CPP-R-4B03 | 1    | Pending | 13-Sep-2027 | **Heap PoCs** (UAF, tcache) |
| CTFs       | 2–3  | Pending | Weekly      | 1–2/week                    |


#### **5B05 — Kernel Fundamentals + Elevation (2 weeks, 14-Sep-2027 → 27-Sep-2027)**

| Item       | Goal | Status  | Due date    | Notes                            |
| ---------- | ---- | ------- | ----------- | -------------------------------- |
| CPP-R-5B05 | 1    | Pending | 27-Sep-2027 | **Elevation to SYSTEM** (VM lab) |
| CTFs       | 2–3  | Pending | Weekly      | 1–2/week                         |


#### **6B02 — F3-CAP (1 week, 28-Sep-2027 → 30-Sep-2027)**

| Item            | Goal | Status  | Due date    | Notes                       |
| --------------- | ---- | ------- | ----------- | --------------------------- |
| **Capstone F3** | 1    | Pending | 30-Sep-2027 | **Userland → SYSTEM chain** |
| PAD-F3          | 1    | Pending | 30-Sep-2027 | Phase 3 integrator          |

**Phase 3 — Summary:**

| Metric   | Goal           | Completed | % |
| -------- | -------------- | --------- | - |
| CPP-Rs   | 4–6            | —         | — |
| PAD      | 1              | —         | — |
| Capstone | 1              | —         | — |
| Exploits | ≥2 (Win+Linux) | —         | — |
| Hours    | ~510 h         | —         | — |
 
 ---
 
### 3) Cumulative summary (24 months of preparation)

| Metric                 | Goal       | Completed | % |
| ---------------------- | ---------- | --------- | - |
| **Total CPP-Rs**       | 20–26      | —         | — |
| **Total PADs**         | 5          | —         | — |
| **Total CTFs**         | 60–90      | —         | — |
| **Bug Bounty reports** | 20–25      | —         | — |
| **CCNA**               | 1          | —         | — |
| **GFACT**              | 1          | —         | — |
| **MAD20**              | 1          | —         | — |
| **Hours invested**     | ~2,880 h   | —         | — |
| **Public portfolio**   | Verifiable | —         | — |

### 4) Readiness checklist (before applying for jobs, Oct 2027)

**Status: Pending**

```
READINESS CHECKLIST — OCTOBER 2027
=====================================

CERTIFICATIONS
- [ ] CCNA certified (Cisco Cert Tracker verifiable)
- [ ] GFACT certified (Credly badge visible)
- [ ] MAD20 badges complete (MITRE portal verifiable)

TECHNICAL PORTFOLIO
- [ ] ≥16 CPP-Rs in public repo, reproducible
- [ ] ≥10 documented Bug Bounty/CTF reports
- [ ] 1 Capstone F3 (userland → SYSTEM)
- [ ] Clean, explanatory README.md
- [ ] Clean and professional GitHub

DOCUMENTATION
- [ ] Technical resume (1 page, verifiable skills)
- [ ] LinkedIn updated with certs and portfolio
- [ ] GitHub pinned with top 3 projects
- [ ] Video demo (5–8 min) of Capstone F3

OPSEC & LEGAL
- [ ] OPSEC audit completed without critical incidents
- [ ] Lab setup verified (NAT-only, snapshots)
- [ ] Manifests in 100% of projects
- [ ] GPG signature on critical tags
- [ ] COMPLIANCE sign-off completed

VERIFIABLE SKILLS
- [ ] Reversing: can analyze a real binary live
- [ ] Exploitation: can build and run an exploit (lab)
- [ ] Scripting: own tools, functional
- [ ] Communication: professional technical reports

Signature: _________________________ Date: _____________
```

### 5) Critical milestones and deadlines

### **Key milestones (24 months):**

| Milestone              | Date        | Status  | Notes                      |
| ---------------------- | ----------- | ------- | -------------------------- |
| **Phase 0 start**      | 9-Oct-2025  | Pending | Operational baseline       |
| **CCNA certified**     | 31-Dec-2025 | Pending | Networking base            |
| **Phase 1 start**      | 1-Feb-2026  | Pending | MA fundamentals            |
| **MAD20 complete**     | 30-Sep-2026 | Pending | ATT&CK basics              |
| **GFACT certified**    | 30-Nov-2026 | Pending | Cybersecurity fundamentals |
| **Phase 2 start**      | 1-Dec-2026  | Pending | Applied reversing          |
| **Phase 3 start**      | 1-Jun-2027  | Pending | Exploitation               |
| **Complete portfolio** | 30-Sep-2027 | Pending | 16–20 CPP-Rs, 10–15 BB     |
| **Job applications**   | Oct-2027    | Pending | Entry-level MA/RE          |

### **Inflexible deadlines:**

* **31-Dec-2025:** CCNA must be passed (basis for Phase 2)
* **30-Sep-2026:** MAD20 + GFACT (credentials for applications)
* **30-Sep-2027:** 100% reproducible portfolio (to present in interviews)

---

### 6) Dependencies and prerequisites

### **Blocks with mandatory dependencies:**

| Block                      | Prereq                      | Reason                                                  | Status |
| -------------------------- | --------------------------- | ------------------------------------------------------- | ------ |
| **Phase 1 (Eniac)**        | Phase 0 complete            | I need fluent Linux/Windows/networking                  |       |
| **Phase 2 (IBM 1401)**     | Phase 1 complete            | I need to understand binaries (ELF/PE) before reversing |       |
| **Phase 3 (Intel 4004)**   | Phase 2 complete            | I need userland techniques before exploitation          |       |
| **Phase 4 (Univac)**       | 6–12 months work experience | I need real-world context post-employment               |       |
| **Phase 5 (YoneEvilHost)** | Phase 4 complete            | I need solid userland before kernel                     |      |


### 7) Preparation close-out (Oct 2027)

### **Final portfolio checklist:**

**Status: Pending (Oct 2027)**

```
FINAL CHECKLIST — PORTFOLIO READY
===================================

TECHNICAL
- [ ] 16–20 reproducible CPP-Rs (one-command verified)
- [ ] 10–15 BB/CTF reports with writeups
- [ ] 1 Capstone F3 (userland → SYSTEM, video demo)
- [ ] 5 PADs (integrated missions)
- [ ] 3 certifications (CCNA, GFACT, MAD20)

REPOS / GITHUB
- [ ] TryOfCheckDogs public repo, clean
- [ ] Executive README.md (what, why, how)
- [ ] 3–5 pinned repos with top projects
- [ ] GPG-signed tags on critical releases
- [ ] Zero secrets in history (scan with git-secrets)

DOCUMENTATION
- [ ] Plan.md up to date
- [ ] Schedule.md with real dates
- [ ] Syllabus.md (Phases 0–3)
- [ ] Metodo_Preparacion.md (how I learn)
- [ ] OPSEC_Legal.md (100% compliance)
- [ ] RECRUITER_GUIDE.md (navigation for HR)

PERSONAL MARKETING
- [ ] Technical resume (1 page, verifiable skills)
- [ ] LinkedIn with certs + portfolio link
- [ ] Customized GitHub profile
- [ ] Capstone video demo (5–8 min, YouTube unlisted)
- [ ] 3–5 technical writeups on personal blog (optional)

INTERVIEW
- [ ] Mock interview prep (10+ technical questions)
- [ ] Technical explainer ready (explain Capstone)
- [ ] Questions for employer (role, mentoring, tech stack)
- [ ] Live demo (reproduce CPP-R live)

LEGAL / OPSEC EVIDENCE
- [ ] OPSEC compliance sign-off signed
- [ ] Complete audit log (no critical incidents)
- [ ] Lab setup verified (NAT-only, functional snapshots)
- [ ] Manifests in 100% of projects (SHA-256 validated)

Signature: _________________________ Date: 30-Sep-2027
Recruiter reviewed: _____________ Date: [after interview]
```

**Motto:** *"If it’s not reproducible, it doesn’t exist; if it leaves no evidence, it doesn’t count."*

**Document updated:** 10-10-2025

**Next review:** next 17-10-2025/10-11-2025
