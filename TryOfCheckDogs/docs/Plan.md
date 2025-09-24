# PLAN — Try Of Check Dogs (TOCD)

### Personal Statement

My objective is to become a Reverse Engineer / Malware Analyst with mastery of defense evasion and the capability to build and defeat controls in Windows and Linux at a low level.
My career begins with self-education: I designed a path that prioritizes offensive reversing, measurable evasion, and the engineering of benign adversary-emulation tools for laboratories. My study methods and conventions are documented in this repository.

### Professional Objective

My career starts with **structured self-education (TOCD, 12 months)** and a **stack of accredited credentials** that generate **U.S.-recognizable college credit** and **HR-recognized signals**:

* **Credit-recommended certifications (ACE)** and **Undergraduate Certificates** to accumulate **≥48 verified credits**.
* **UMGC – Undergraduate Certificate in Cyber Threat Hunting (18 credits)** as a **transcriptable anchor** and a **bridge** to future bachelor’s/graduate studies.
* **Bug bounty and contract work** fund the plan and provide **practical evidence**.
* Once the credits are in place, I’ll enter **SANS** (CAE-CD, accredited) to consolidate with **GIAC** and specialize in **RE/Malware**.

### Why accredited certifications

* They are **valid and recognized in the U.S.** (ACE/university transcript/CAE-CD).
* They **satisfy prerequisites** (e.g., **≥48 credits** for SANS **ACS**).
* They **improve HR filters** and keep the option to **complete a bachelor’s** later by transferring what I’ve already earned.

### 12-Month Path (TOCD + U.S. credits)

I maintain **UORE OPSEC**: VM with NAT, snapshots/rollback, benign artifacts; everything with **evidence** (run.log, checksums, manifest.json) and **encrypted prompts (GPG)**.

### Months 1–3 — Fundamentals + ACE (self-paced)

* **Google Cybersecurity Professional Certificate** (**ACE \~9 credits**).
* **Sophia Learning (GenEd)**: **2 courses (6 credits)**.
* **Bug bounty (GDP):** **1 submission/week** with a **reproducible evidence package**.

### Months 4–6 — First core cert + more credit

* **PNPT** (hands-on pentest) as the **core trade credential**.
* **Sophia**: **+2 courses (6 credits)** → **12 credits total** via Sophia.
* **CLEP/DSST:** **1–2 exams (3–6 credits)** to accelerate.

### Months 7–9 — University credential + extra ACE

* **UMGC – Undergraduate Certificate in Cyber Threat Hunting (18 credits, online)**.
* **IBM Cybersecurity Analyst** (**ACE 10–15 credits**, version-dependent).
* **DSST** optional if credits are still short.

### Months 10–12 — Close ≥48 credits & “ready for SANS”

* **Audit accumulated credits** (target: **48–60 credits**).
* **GIAC (optional, exam-only)** if budget allows; otherwise I’ll obtain GIAC **inside SANS**.
* **Professional dossier:** repos with **evidence/**, bug-bounty reports, **benign adversary-emulation tooling**, and **CPP-R templates**.

### Next Stage (post-12 months)

* **SANS – Cybersecurity (ACS):** 4 courses, **4×GIAC**, pace **10–18 months**.
  If credits were short, **SANS CSF** (**6–12 credits**) serves as a bridge.
* Technical focus: **offensive reverse engineering**, **measurable evasion**, **benign tooling engineering**, **threat research**, and **malware analysis**.

### Methods & Conventions (UORE)

* **Lab-only**, zero traffic outside scope, **synthetic datasets**.
* **Reproducibility is mandatory:** every exercise/case closes with a **one-command CPP-R** (`cpp_run.sh`), **manifest.json**, and **evidence/** (run.log, checksums, **GPG/VALIDSIG**).
* **Canonical textual flow:** command table → **GDP** → objective verification → **CPP-R** closure.

### Why I’m doing this

I’m passionate about cybersecurity and chose **Reverse Engineering/Malware** for the real technical challenge. I aim for a **global first role** (RE Jr./Malware Analyst), to **fund SANS and GIAC**, and mid-term to build **robust evasion tools and “bug-breaking” defenses** with measurable effectiveness.

### Measurable 12-Month Targets

* **U.S. credits accumulated:** **≥48** (**ACE + UMGC + exams**).
* **Core certifications:** **PNPT** + (optional) **1 GIAC** or a **GIAC plan within SANS**.
* **Accredited certifications (ACE/university):** **3–4** (Google, IBM, Sophia/CLEP/DSST + UMGC).
* **Portfolio:** **≥12** CPP-R deliveries with evidence; **≥6** bug-bounty reports with **reproducible PoC**.

### Vision and Goal

Achieve professional competence in Reverse Engineering and Malware, with a verifiable and reproducible portfolio: system utilities, binary parsers, hooking/loader PoCs, telemetry, and professional documentation with evidence.

### Guiding Principles of the Path

* **Hands-on first.** Each block closes with assessable practice and reproducible evidence.
* **Objective measurement.** Defensive baseline (hashes, IOCs, YARA/Sigma/ETW/auditd) to demonstrate results with data.
* **Ethics and isolation.** Everything in an isolated lab with OPSEC/Legal.
* **Realistic progression.** Fundamentals → userland → ABI/formats → PE/ELF analysis → triage → advanced internals.

### Methodology (Class and Practice)

### Composite Stack (SC) Structure

* **Day A:** theory + GDP (guided drills) per topic.
* **Day B:** timed re-drills + combined drills + short quiz on symbols/FDs.
* **Day C:** interleaving with the next topic + stack CPP-R (one-command, reproducible evidence).

### Practice Types

* **GDP (Guided Drills Protocol):** guided exercises, immediate verification.
* **CPP-R (Proof of Concept Reproducible):** reproducible closure with `cpp/run.sh` that generates `cpp/evidence/` (run.log, checksums.txt, manifest.json, screenshots).
* **PAD (Aptitude Test):** block-integrating mission with brief defense.
* **MJT (Mock Job Test):** mini job-style test with minimal context to exercise judgment.

Everything runs in a VM with NAT, benign artifacts, snapshots, and proven rollback.

### Integrated Builder Track (Ethical)

Starting in Phase 1 I incorporate a Builder Track: construction of benign “malware-like” artifacts with their companion detection (rules/queries) and reproducible evidence. This validates that I can build and measure without crossing lines.

**F1 (ENIAC):**
BL-F1-01 benign Loader/CLI with logging; BL-F1-02 encrypted config + validation; BL-F1-03 minimal telemetry; BL-F1-04 LD\_PRELOAD hook (counter/echo).
Detection: grep/awk + YARA-lite on my artifacts.

**F2 (IBM 1401):**
BL-F2-01 local loader; BL-F2-02 PE parser; BL-F2-03 manual mapping (intro) with a benign DLL; test harness.
Detection: local events (Process/Load) and basic ETW notes.

**F3 (Intel 4004):**
BL-F3-01 build/telemetry switches + artifact matrix; BL-F3-02 detection harness (Win/Linux); BL-F3-03 lab userland chain (load+logging+comparison).
Detection: Sigma/KQL/YARA-lite on my own dataset.

**F4 (Univac 1108):**
BL-F4-01 benign implant (innocuous tasks); BL-F4-02 reversible persistence (Win/Linux); BL-F4-03 lab C2 in an isolated network.
Detection: minimal blue-team dashboard and before/after comparisons.

**F5 (YoneEvilHost):**
BL-F5-01 LKM with toggles/telemetry; BL-F5-02 KMDF driver with minimal IOCTL + callbacks; BL-F5-03 benign DXE (OVMF).
Detection: YARA/Sigma/KQL rules specific to my artifacts.

### TOCD Structure

**Phase → Block → Stack (SC) → Assessment**

* **Phase 1** (9 months, 2025-10-01 → 2026-06-30). Fundamentals through a Malware Analysis lens: Linux/CLI, toolchain and debugging, Systems-C, x86\_64/ABI/ASM, ELF/PLT/GOT/LD\_PRELOAD, PE Fundamentals, and safe triage. Includes the Builder Track BL-F1 items.
* **Phase 2** (2026-07-01 → 2026-09-30). Applied reversing and userland execution; loaders and manual mapping (intro). Includes BL-F2.
* **Phase 3** (2027-08-03 → 2028-07-31). Userland internals, pedagogical exploitation (ROP/Leaks), harness and detection; includes BL-F3.
* **Phase 4** (2028-08-01 → 2029-07-31). Evasion, reversible persistence, and lab C2; includes BL-F4.
* **Phase 5** (2029-02-01 → 2029-07-31). Kernel/Firmware/UEFI; LKM, benign KMDF driver, and DXE; includes BL-F5.

### Scope and Ethics

Lab-only; VMs and benign artifacts.
No third-party targets without explicit authorization.
Evasion is treated as a measurable experiment to understand and improve defenses.

### High-Level Timeline

* **TOCD start:** 2025-10-01.
* **Phase 1 — ENIAC (9 months):** 2025-10-01 → 2026-06-30.
  Blocks: 0B01 Linux/CLI/Bash & Ecosystem → 1B01 Toolchain/Debug/VCS → 2B01–3B01 Systems-C I → 4B01 x86\_64/ABI/ASM → 5B01 Linking/ELF/LD\_PRELOAD → 6B01 Windows & PE Fundamentals → 7B01 Intro to Malware Analysis (Safe Triage & IOCs).
  Builder Track F1 active (BL-F1-01..04).
* **Phase 2 — IBM 1401:** 2026-07-01 → 2026-09-30. Builder Track F2 active.
* **Bug Bounty (start):** late September 2026 (anchor: 2026-09-30) in parallel with studies; target duration 9 months.
* **Phases 3–5:** per current schedule, with Builder Track in each phase.

### Coordinated Tracks

* **TOCD (self-directed):** progressive curriculum in systems, RE, and measurable evasion.
* **University (PUCMM):** formal foundation (start 2026-09).
* **JHU (target):** after securing employment in RE/Malware.

### Time Commitments

* **Before university:** 5 h/day (Mon–Sat) on TOCD mainline.
* **With university + bug bounty:** 4–5 h/day for bugs; TOCD via BackLogs (6–8 h/week).

### Goals and KPIs

### Technical

* Close out CPP-R + PAD per block with reproducible evidence; maintain idempotent runners.
* Deliver tested utilities (hexdump, parsers, hooks, loaders, harness) with logs and hashes.

### Progress

* Effective lab hours/week; CPP-R/PAD closure rate; issues/resolutions per block.
* In bug bounty: verified findings and accepted reports per month.

### Financial Target (Bug Bounty)

* Goal: USD 6,000–17,000 in 9 months.
* Safety fund: 3–4 months of expenses.

### BackLogs During University

Maintain 6–8 h/week: lab refresh, mini builder exercises (8A/8B in F4), and toolchain/documentation maintenance.

### Risk Management

Academic overload, income volatility, scope drift, and OPSEC/Legal compliance.
Mitigations: weekly load limits, evidence pipeline, snapshots per block, scope checklist, and monthly review.

### OPSEC and Legal

Campaign-level compartmentalization, metadata minimization, artifact signing and control, usage and consent policy. GPG encryption for sensitive briefs/resources; VALIDSIG verification in `manifest.json`.

### Versioning and Control

Repos per phase/block, issues and milestones tied to KPIs, changelog with dated entries (ISO-8601), signed tags per block (e.g., vF1-B3).

### Expected Outcome

Operational competence in RE/Malware, a verifiable portfolio, measured evasion with telemetry, and professional documentation supporting roles in Reverse Engineering / Malware Analysis / Adversary Emulation (lab), and the JHU postgraduate path.

### Appendices (Phase 1 Summary by Blocks)

* **0B01 — Linux/CLI/Bash & Ecosystem.** FHS, permissions/ACLs, pipelines, backups/rsync, processes/signals, basic networking, apt/dpkg, OPSEC-lite.
* **1B01 — Toolchain & Debugging.** Git/PRs/hooks, Make/CMake, flags and sanitizers, gdb/lldb, strace/ltrace, perf, binutils.
* **2B01–3B01 — Systems-C I.** Pointers/memory, low-level I/O, mmap, safe binary parsing, sockets, testing and light fuzzing.
* **4B01 — x86\_64/ABI/ASM.** Calling conventions, stack, syscalls, C↔asm.
* **5B01 — Linking/ELF/PLT/GOT/LD\_PRELOAD.** ELF, dynamic linking, userland hooks, rpath/runpath.
* **6B01 — Windows & PE Fundamentals.** PE layout, sections, imports/exports, hashes/signatures.
* **7B01 — Intro to Malware Analysis.** Safe triage, IOC extraction, minimal report.

**Builder Track F1 (BL-F1-01..04).** Loader/CLI, encrypted config, minimal telemetry, benign LD\_PRELOAD hook.
