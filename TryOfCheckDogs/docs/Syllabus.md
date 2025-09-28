# Syllabus — Try Of Check Docs (TOCD)

**Plan window:** 2025-10-01 → 2027-09-30 (24 months)
**Cadence:** ~30 hrs/week (5 hrs/day, Mon–Sat)
**Methodology:** **GDP** (guided drills) · **CPP-R** (reproducible closures) · **PAD** (block mission) · **MJT** (mock job test) · **Lab-only/OPSEC**

---

### 1) Purpose and outcome

Training to operate as a **Reverse Engineer / Malware Analyst** with mastery of **defense evasion** and the ability to **create and break controls** in **Windows** and **Linux** at a low level. A **practical, credit-bearing** design **aligned to the U.S. market**: you accrue **transferable credits** (Sophia/CLEP/DSST, SANS.edu CSF), **recognized certifications** (**MAD20**, **PMRP, GFACT**), and a **reproducible portfolio**.

**Why accreditations (and not standalone courses):**

1. They are **valid in the U.S.** (transcript/ACE/CAE-CD).
2. They **satisfy prerequisites** (e.g., **≥48 credits** if applying to SANS ACS down the line).
3. They enhance **HR filters** and preserve the option to **finish a bachelor’s** by transferring what you’ve earned.

---

### 2) UORE Rules (non-negotiable)

* **Lab-only:** VM with **NAT**, **snapshots**, and proven **rollback**; **benign** artifacts; zero out-of-scope traffic.
* **Reproducible or it doesn’t exist:** every exercise closes with a **one-command CPP-R** (`cpp_run.sh`) + `manifest.json` + `evidence/` (`run.log`, `checksums.txt`) and a **GPG signature (VALIDSIG)**.
* **Encryption by default:** statements/sensitive resources under the **Encrypted Mission Protocol**.
* **Time with intent:** 70–80% hands-on; minimum enabling theory.

**Strict mixing rule:** never carry **two** courses/certifications at once; only **one** active course/cert **+ TOCD**.
**Pacing change:** starting **2026-03-01** (month 6), **TOCD = 2.5 h/day** and the active course/cert **= 2.5 h/day** (except BB Sprint, where TOCD goes to backlog 30–45 min/week).

---

### 3) Integrated calendar (24 months, hours/day, and deliverables)

| Period (exact dates)        | Primary focus (h/day)                        |  Secondary focus (h/day) |                                                                                    Key deliverables |   |
| --------------------------- | -------------------------------------------- | -----------------------: | --------------------------------------------------------------------------------------------------: | - |
| **2025-10-01 → 2026-02-28** | **Intensive TOCD** (5.0)                     |                        — | **8–10 CPP-R** (Recon, IDOR/BOLA, XSS/DOM/Template, SSRF/Chains, Logic/CSRF, Automation, Reporting) |   |
| **2026-03-01 → 2026-06-30** | **Sophia (4 courses)** (2.5)                 |           **TOCD** (2.5) |                                                                4 courses (**~12 cr**) + **4 CPP-R** |   |
| **2026-07-01 → 2026-08-31** | **Cert prep & portfolio** (2.5)              |           **TOCD** (2.5) |                                                     Repos, CPP-R templates, selection of BB targets |   |
| **2026-09-01 → 2026-10-31** | **MITRE MAD20 Basic** (2.5)                  |     **Bug Bounty** (2.5) |                                                           ATT&CK badges + 6–8 BB submissions (cum.) |   |
| **2026-11-01 → 2026-11-30** | **TCM PMRP** (2.5)                           |     **Bug Bounty** (2.5) |                                                                     PMRP (5d + 2d) + BB submissions |   |
| **2026-12-01 → 2026-12-31** | **Bug Bounty (consolidation)** (2.5)         | **TOCD (backlog)** (2.5) |                                                        14–18 total submissions · 6–8 “star” reports |   |
| **2027-01-01 → 2027-03-31** | **SANS CSF — Course 1** (2.5)                |           **TOCD** (2.5) |                                                                        1 CSF course + 1–2 **CPP-R** |   |
| **2027-04-01 → 2027-06-30** | **SANS CSF — Course 2** (2.5)                |           **TOCD** (2.5) |                                                                        1 CSF course + 1–2 **CPP-R** |   |
| **2027-07-01 → 2027-09-30** | **SANS CSF — Course 3 (SEC275/GFACT)** (2.5) |           **TOCD** (2.5) |                                **CSF complete (~12 cr, GFACT included) + dossier and applications** |   |

---

### 4) TOCD academic structure (blocks and closures)

### Phase 1 — **ENIAC** (Foundations oriented to Malware Analysis)

**Coverage:** **2025-10-01 → 2026-06-30**
**Pace:**

* 2025-10-01 → 2026-02-28: **5 h/day**
* 2026-03-01 → 2026-06-30: **2.5 h/day** (in parallel with Sophia)

**Core blocks**

* **0B01 — Linux/CLI/Bash & Ecosystem**
  FHS, permissions/ACL, pipelines, `find/tar/rsync`, processes/signals, basic networking, packaging, lab hygiene.
  **BT:** Benign loader/CLI with logging and error handling.
  **Close:** CPP-R + PAD-0B01.

* **1B01 — Toolchain, Debugging & VCS**
  Git/flow, Make/CMake, flags/ASan/UBSan, gdb/lldb, strace/ltrace, perf/binutils.
  **BT:** Encrypted configuration (benign data) + strict validation.
  **Close:** CPP-R + PAD-1B01.

* **2B01–3B01 — Systems C I**
  Pointers/layout, dynamic memory, I/O and `mmap`, safe binary parsing, sockets intro, testing and light fuzzing.
  **BT:** Minimal telemetry and local summary for utilities.
  **Close:** CPP-R (hexdump/parser) + PAD.

* **4B01 — x86_64/ABI/ASM**
  SysV ABI/stack, syscalls, C↔asm, memory routines.
  **BT:** **LD_PRELOAD** hook “counter/echo” (benign).
  **Close:** CPP-R (wrappers/syscalls) + PAD.

* **5B01 — Linking/ELF/PLT/GOT/LD_PRELOAD**
  ELF, dynamic linking, symbol visibility, `rpath/runpath`, userland hooks.
  **Close:** CPP-R (LD_PRELOAD hook) + PAD.

* **6B01 — Windows & PE Fundamentals**
  DOS/NT headers, sections, imports/exports, reloc/TLS, tooling and hashing/signatures; reproducible PE triage.
  **Close:** CPP-R (basic PE viewer) + PAD.

* **7B01 — Intro to Malware Analysis (safe triage)**
  Controlled static/dynamic flow, IOCs, YARA-lite, dynamic logging (benign harness), reporting and ethics.
  **Close:** CPP-R (reproducible triage) + PAD.

---

### Phase 2 — **IBM 1401** (Applied Reversing & Userland Execution)

**Coverage:** **2026-07-01 → 2027-03-31**
**Pace:**

* 2026-07-01 → 2026-08-31: **2.5 h/day TOCD** (in parallel with “Cert prep & portfolio”)
* 2026-09-01 → 2026-12-31: **TOCD backlog** (30–45 min/week) due to BB Sprint/MAD20/PMRP
* 2027-01-01 → 2027-03-31: **2.5 h/day TOCD** (in parallel with CSF — Course 1)

**Core blocks** *(content unchanged)*

* **0B04 — Applied Reversing I**
  Static (strings/CFG) and dynamic (x64dbg/WinDbg), basic anti-analysis, single-layer unpack + minimal IAT; support scripting (Python).
  **BT:** Local benign loader + harness.
  **Close:** CPP-R (reproducible unpack) + PAD.

* **1B04 — Deep PE & In-Memory Loaders**
  Practical PE; in-memory loaders (allocate/copy/protect/jump); **manual mapping (intro)**.
  **BT:** Usable PE parser + introductory manual mapping of a benign DLL with export.
  **Close:** CPP-R (parser/loader/mm) + PAD.

* **2B04 — Userland Execution & Mitigations**
  CRT+LoadLibrary, APC queueing, process hollowing (intro), DEP/ASLR/CFG.
  **BT:** Reproducible comparison per technique (logging + artifact matrix).
  **Close:** Comparative CPP-R + PAD.

---

### Phase 3 — **Intel 4004** (Userland Internals & Exploitation) — *start post–24 months*

**Coverage:** **2027-10-01 → 2028-09-30**

* **0B04 — Process & Memory Internals**
  PEB/TEB, regions, modules, heaps, TLS demo.
  **BT:** Build/telemetry switches + artifact matrix (modules/regions/TLS).
  **Close:** CPP-R (process/region map, PEB/TEB, TLS) + PAD.

* **1B03 — Userland Exploitation I**
  Stack overflow and basic ROP; DEP/ASLR mitigations.
  **BT:** Detection harness (Win/Linux) with success/failure signals, timings, and logs.
  **Close:** Educational exploit CPP-R + PAD.

* **2B04 — Advanced Windows Internals**
  Memory/Object Manager, threads/APC, minimal ETW.
  **BT:** Userland chain in lab (benign load + logging) with before/after comparison.
  **Close:** CPP-R (handles/regions/APC/ETW) + PAD.

* **3B03 — Userland Exploitation II**
  Info-leak + ROP/JOP (Win/Linux) with harness.
  **Close:** Platform-specific CPP-R + PAD.

* **4B03 — Heap Exploitation (didactic)**
  UAF and tcache/fastbin (Linux); vtable/func-ptr (Windows).
  **Close:** PoC CPP-Rs + hardening + PAD.

* **5B05 — Kernel (Windows) fundamentals + local elevation (lab)**
  IOCTL/IRP, lab R/W primitive, instructional elevation.
  **Close:** IOCTL client CPP-R + R/W + VM elevation + PAD.

* **6B02 — F3-CAP (userland → SYSTEM)**
  Reproducible integration with defense.

---

### Phase 4 — **Univac 1108** (Evasion, Persistence, and C2)

**Coverage:** **2028-10-01 → 2029-09-30**

* **8A — Initial Access & Covert Delivery (lab)**
  Local HTTP(S)/WS/DNS profiles on an isolated network; benign staging.
  **BT:** Benign implant (innocuous tasks) with timing control and logging.
  **Close:** CPP-R + PAD.

* **8B — Minimal Blue Track**
  Reproducible event collection, minimal dashboard.
  **BT:** Telemetry baseline and verification (before/after).
  **Close:** CPP-R + PAD.

* **F4-B1 — Evasion I (artifact reduction)**
  Artifact matrix, build hardening, footprint.
  **BT:** Before/after measurement of the benign implant.
  **Close:** Before/after CPP-R + PAD.

* **F4-B2 — Evasion II (telemetry-aware)**
  Experiments with ETW/logs and build adjustments.
  **BT:** Telemetry-aware adjustments with evidence.
  **Close:** Comparative CPP-R + PAD.

* **9B — Implant Crypto & Packer v2**
  Encrypted config and didactic packing.
  **BT:** Encrypted config + packer v2 with validation.
  **Close:** CPP-R + PAD.

* **F4-B3 — Cross-platform Persistence (rollback)**
  Verified install/start/stop/uninstall (Win/Linux).
  **BT:** Reversible persistence with cleanup checklist.
  **Close:** CPP-R + PAD.

* **F4-B4 — Covert C2 & Traffic Profiling**
  Benign server/client; traffic profiling.
  **BT:** Lab C2 on an isolated network with metrics.
  **Close:** CPP-R + PAD.

* **F4-B5 — Covert Operations (lab)**
  End-to-end operation with OPSEC checklist.
  **Close:** CPP-R + PAD.

* **F4-CAP — Integrated Operation**
  Final reproducible delivery with defense.

---

### Phase 5 — **YoneEvilHost** (Kernel · Firmware · UEFI/Boot)

**Coverage:** **2029-10-01 → 2030-03-31**

* **F5-B1 — Kernel Observability & Toolchain**
  KD (Windows), kprobes/ftrace (Linux), signal mapping.
  **BT:** Signal↔event table and environment checklist (KD/kprobes/QEMU).
  **Close:** CPP-R + PAD.

* **F5-B2 — Linux LKM & Telemetry**
  Benign LKMs with toggles/telemetry and load/rollback tests.
  **BT:** LKM with sysfs/procfs + stress + rollback.
  **Close:** CPP-R + PAD.

* **F5-B3 — Windows Driver Fundamentals**
  High-level KMDF/WDM, minimal IOCTL and callbacks; KD.
  **BT:** Benign KMDF driver (echo IOCTL + process/image callbacks).
  **Close:** CPP-R + PAD.

* **F5-B4 — UEFI/OVMF & Bootflow**
  EDK II, benign DXE, NVRAM variables; Secure Boot (lab).
  **BT:** Benign DXE (inventory) with evidence and rollback.
  **Close:** CPP-R + PAD.

* **F5-B5 — Rootkit-style PoCs (VM only)**
  Reversible and detectable PoCs (blue-side panel).
  **Close:** CPP-R + PAD.

* **F5-CAP — Kernel/Firmware Blue-Aware**
  Reproducible integration and technical defense.

---

### 5) External accreditations (timeline and rationale)

* **Sophia (4 courses)** — **2026-03-01 → 2026-06-30**
  *Intro to Python*, *Intro to Relational Databases*, *Intro to Networking*, *College Algebra* **or** *Intro to Statistics*.
  **Rationale:** **~12 cr** cost-effective and aligned to tooling/telemetry/math.

* **MITRE MAD20 Basic** — **2026-09-01 → 2026-10-31**
  **Rationale:** common ATT&CK language + verifiable badges.

* **TCM PMRP** — **2026-11-01 → 2026-11-30** (5 days + 2 days of reporting within the window)
  **Rationale:** **practical malware** with reproducible reporting (fits CPP-R).

* **Bug Bounty (Sprint)** — **2026-09-01 → 2026-12-31**
  **Rationale:** real evidence (replay/impact/mitigation) and funding.

* **SANS.edu — Cybersecurity Fundamentals Certificate (CSF)** — **2027-01-01 → 2027-09-30**
  3 courses **one at a time** (≈13 weeks each) + **GFACT** (via SEC275).
  **Rationale:** **~12 cr** from SANS + CAE-CD mark.

* **CLEP/DSST (1–2 exams, optional)** — **Apr–Jun 2027** (1-day micro-windows)
  **Rationale:** **+6–12 cr** at low cost if credits need a push.

**Expected credits by 2027-09-30:**

* **Sophia:** ~12 cr · **SANS CSF:** ~12 cr · **CLEP/DSST (optional):** +6–12 cr
  **Projected total:** **24–36 cr** (without CLEP) · **30–48 cr** (with 1–2 CLEP).
  If credits are short of 48 at close, add **English Composition I/II (Sophia)** or one “anchor” course (UMGC/APU).

---

### 6) Assessment and evidence

* **CPP-R (per stack/block):** `cpp_run.sh` (1 command) → `evidence/` with `run.log`, `checksums.txt`, screenshots (if applicable), and `manifest.json`; **idempotent** on a clean VM.
* **PAD (per block):** mini-mission integrated with brief defense.
* **MJT (per phase):** realistic case with clear bounds (objective grader).
* **Builder Track (companion detection):** for each benign artifact, **rules/queries** (YARA/Sigma/KQL) and verification.

**Acceptance criteria (minimum):**
Cold reproducibility · Exact steps + **replay** · Quantified impact + **mitigation** · complete `evidence/` with **VALIDSIG**.

---

### 7) KPIs and decision “gates”

* **Monthly:** ≥1–2 **CPP-R** (during BB Sprint: ≥3 submissions/month).
* **Quarterly:** 4 **Sophia** courses (Mar–Jun 2026) **or** 1 **CSF** course (Jan–Mar / Apr–Jun / Jul–Sep 2027).
* **From 2027-07:** **10–15 applications/month** (contract/FT).

**Gates (continue/adjust):**

* **2026-06-30:** 4 **Sophia** courses → move to **MAD20/PMRP/BB** gap.
* **2026-12-31:** BB **Sprint** + certs completed → **start CSF**.

---

### 8) Ethics and OPSEC

All work is **benign** and runs in an **isolated VM** with snapshots and rollback; zero third-party targets without authorization; no external network in **CPP-R/MJT** final runs; briefs encrypted as applicable; rigorous **evidence and signatures** as standard practice.
