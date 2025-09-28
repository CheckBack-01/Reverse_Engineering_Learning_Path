# Public Calendar — TOCD (Quarters, Phases, Blocks, and Stacks)

**Total coverage (F1→F5):** 2025-10-01 → 2030-03-31
**Time commitment:** 5 h/day (Mon–Sat)
**Methodology:** **CPP-R** (reproducible closures) + **PAD** (*Practical Aptitude Drill*) + **GDP** (guided drills) · **OPSEC/Legal** applied

**Strict mixing rule:** I never mix **two** courses/certifications together; I only combine **one** course/cert at a time **with TOCD**.
**Pace from month 6 onward:** **2.5 h/day** to the active course/cert + **2.5 h/day** to TOCD (except BB Sprint, where TOCD goes to backlog 30–45 min/week).

**Block nomenclature:**
• In **F1–F2** I use `XBYY` (e.g., `0B04`) → X = block index (starting at 0) · YY = number of stacks.
• In **F4** I use `F4-B1…B5` and modules `8A/8B/9B`.
• In **F5** I use `F5-B1…B5` for thematic clarity.

---

### Quick view by Phase (durations, hours/day, and fit within the 24 months)

* **Phase 1 — ENIAC (Foundations + MA lens)**
  **2025-10-01 → 2026-06-30** · 5 h/day (Oct–Feb) → 2.5 h TOCD (Mar–Jun, in parallel with Sophia)

* **Phase 2 — IBM 1401 (Applied Reversing & Userland Execution)**
  **2026-07-01 → 2027-03-31** · 2.5 h TOCD (Jul–Aug) → **TOCD Backlog** (Sep–Dec, due to BB Sprint/certs) → 2.5 h TOCD (Jan–Mar, in parallel with CSF Course 1)

* **Phase 3 — Intel 4004 (Userland Internals & Exploitation)**
  **2027-10-01 → 2028-09-30** · 2.5–3 h TOCD (post-CSF; normal pace)

* **Phase 4 — Univac 1108 (Evasion, Persistence, and C2)**
  **2028-10-01 → 2029-09-30** · normal pace

* **Phase 5 — YoneEvilHost (Kernel · Firmware · UEFI/Boot)**
  **2029-10-01 → 2030-03-31** · normal pace

---

### High-level table — First 24 months (what I do and what I deliver)

| Period                  | Primary focus (2.5–5 h/day)            | Secondary focus (2.5 h/day) | Key deliverables                                                                                    |
| ----------------------- | -------------------------------------- | --------------------------- | --------------------------------------------------------------------------------------------------- |
| 2025-10-01 → 2026-02-28 | **Intensive TOCD (no courses)**        | —                           | 8–10 **CPP-R** (Recon, IDOR/BOLA, XSS/DOM/Template, SSRF/Chains, Logic/CSRF, Automation, Reporting) |
| 2026-03-01 → 2026-06-30 | **Sophia (4 courses)**                 | **Light TOCD**              | 4 courses (~12 cr) + 4 **CPP-R**                                                                    |
| 2026-07-01 → 2026-08-31 | **Cert prep & portfolio**              | **TOCD (light)**            | Repos, CPP-R templates, BB targets                                                                  |
| 2026-09-01 → 2026-10-31 | **MITRE MAD20 Basic**                  | **Bug Bounty**              | ATT&CK badges + 6–8 BB submissions (cumulative)                                                     |
| 2026-11-01 → 2026-11-30 | **TCM PMRP**                           | **Bug Bounty**              | PMRP (5d+2d) + BB submissions                                                                       |
| 2026-12-01 → 2026-12-31 | **Bug Bounty (consolidation)**         | **TOCD (backlog)**          | 14–18 total submissions · 6–8 “star” reports                                                        |
| 2027-01-01 → 2027-03-31 | **SANS CSF — Course 1**                | **TOCD (light)**            | 1 CSF course + 1–2 **CPP-R**                                                                        |
| 2027-04-01 → 2027-06-30 | **SANS CSF — Course 2**                | **TOCD (light)**            | 1 CSF course + 1–2 **CPP-R**                                                                        |
| 2027-07-01 → 2027-09-30 | **SANS CSF — Course 3 (SEC275/GFACT)** | **TOCD (light)**            | CSF complete (~12 cr) + **GIAC** (last week of Sep) + dossier                                       |

---

### Detail by quarters (Q) and blocks

### Q1 — 2025-10-01 → 2025-12-31

**Phase 1 (start) — Intensive TOCD (5 h/day)**

* **0B01 — Linux/CLI/Bash & Ecosystem** (1 stack)
  FHS, permissions, pipelines (grep/sed/awk), backups/rsync, processes/signals, basic networking, apt/dpkg, lab hygiene.
  **BT:** Benign CLI/loader with logging and error handling.

* **1B01 — Toolchain, Debugging & VCS** (1 stack)
  Git/PRs/hooks, Make/CMake, binutils, flags, sanitizers, gdb/lldb, strace/ltrace, perf.
  **BT:** Encrypted configuration (benign data) + strict validation.

**Q1 deliverables:** 3–4 **CPP-R**.

---

### Q2 — 2026-01-01 → 2026-03-31

**Phase 1 (continuation) — Intensive TOCD (5 h/day → 2.5 h from March)**

* **2B01 — Systems-C I (start)** (1 stack)
  Pointers/ownership, safe strings, I/O (`stdio` vs syscalls), `mmap`/buffers.
  **BT:** Minimal telemetry and local summary.

* **3B01 — Systems-C I (close)** (1 stack)
  Testing/coverage, light fuzzing, sockets (blocking/non-blocking).

* **4B01 — x86_64/ABI/ASM** (1 stack)
  SysV convention, stack frames, syscalls, C↔asm, benchmarks.
  **BT:** **LD_PRELOAD** hook “counter/echo” (benign).

**Q2 deliverables:** 3–4 additional **CPP-R**.

---

### Q3 — 2026-04-01 → 2026-06-30

**Phase 1 (close) + Sophia (2.5 h) / TOCD (2.5 h)**

* **5B01 — Linking/Loading (ELF, PLT/GOT, LD_PRELOAD)** (1 stack)
  ELF headers/relocs/symbols, `rpath`/`runpath`.

* **6B01 — Windows & PE Fundamentals for Analysts** (1 stack)
  PE layout, sections, imports/exports, hashes/signatures; reproducible PE triage.

* **7B01 — Intro to Malware Analysis: Safe Triage & IOCs** (1 stack)
  `strings`/regex → IOC table, YARA-lite (static), dynamic logging (benign harness), reporting and ethics.

**Sophia (one per month, I don’t mix them):**
Mar: *Intro to Python* · Apr: *Relational Databases* · May: *Networking* · Jun: *College Algebra*
**Q3 deliverables:** 4 courses (~12 cr) + 1–2 light **CPP-R**.

---

### Q4 — 2026-07-01 → 2026-09-30

**Phase 2 (start) — TOCD 2.5 h/day + cert prep (Jul–Aug)**

* **0B04 — Applied Reversing I** (up to 4 stacks)
  Static/dynamic, basic anti-analysis, 1-layer unpack + minimal IAT; support scripting (Python).
  **BT:** Local benign loader and harness.
  **Close:** CPP-R (reproducible unpack) + PAD.

**Pace change (BB Sprint + MAD20):**

* **From 2026-09-01:** **Bug Bounty (2.5 h/day)** + **MAD20 (2.5 h/day)**.
* **TOCD to backlog:** 30–45 min/week (non-blocking).

---

### Q5 — 2026-10-01 → 2026-12-31

**Phase 2 (operational pause) — BB Sprint + MAD20/PMRP**

* **Oct:** keep **Bug Bounty** (2.5 h/day) + close **MAD20** (badges).
* **Nov:** **TCM PMRP** (2.5 h/day) + **Bug Bounty** (2.5 h/day).
* **Dec:** BB consolidation (2.5 h/day) + **TOCD backlog** (30–45 min/week).

**Sprint goals (Sep–Dec):** 14–18 submissions; 6–8 “star” reports with **CPP-R**.

---

### Q6 — 2027-01-01 → 2027-03-31

**Phase 2 (continuation) — TOCD 2.5 h/day + SANS CSF (Course 1, 3 h/day)**

* **1B04 — Deep PE & In-Memory Loaders** (up to 4 stacks)
  Practical PE, in-memory loaders (allocate/copy/protect/jump), **manual mapping (intro)**.
  **BT:** Usable PE parser + introductory manual mapping of a benign DLL with export.
  **Close:** CPP-R (parser/loader/mm) + PAD.

* **2B04 — Userland Execution & Mitigations** (up to 4 stacks)
  CRT+LoadLibrary, APC queueing, process hollowing (intro), DEP/ASLR/CFG.
  **BT:** Reproducible comparison per technique (logging + artifact matrix).
  **Close:** Comparative CPP-R + PAD.

**SANS CSF — Course 1:** **2027-01-01 → 2027-03-31** (in parallel, without mixing with courses outside CSF).

---

### Q7 — 2027-04-01 → 2027-06-30

**Transition F2→F3 + SANS CSF (Course 2)**

* **Close Phase 2** (if any minor deliverable remains).
* **Start Phase 3 — Intel 4004 (pre-flight):** environment/harness preparation (light).
* **SANS CSF — Course 2:** **2027-04-01 → 2027-06-30** (3 h/day) + **TOCD 2 h/day**.

**Q7 deliverables:** 1 CSF course + 1–2 CPP-R.

---

### Q8 — 2027-07-01 → 2027-09-30

**Phase 3 (actual start) + SANS CSF (Course 3 / SEC275/GFACT)**

* **0B04 — Process & Memory Internals (userland, Win/ELF)** (up to 4 stacks)
  PEB/TEB, region-map, modules/heaps, methodology/evidence.
  **BT:** Build/telemetry switches + artifact matrix (modules/regions/TLS).

* **SANS CSF — Course 3 (SEC275/GFACT):** **2027-07-01 → 2027-09-30** (3 h/day) + **TOCD 2 h/day**.

**Q8 deliverables:** **CSF complete (~12 cr, GFACT included)** + 1–2 CPP-R + dossier and **applications (10–15/month)**.

---

### Phase 3 — Intel 4004 (Userland Internals & Exploitation) — Continuation post–24 months

**Coverage:** **2027-10-01 → 2028-09-30**

* **1B03 — Userland Exploitation I (basic ROP)** (3 stacks)
  Vulnerable lab case, gadget/ROP hunt, mitigations (DEP/ASLR).
  **BT:** Detection harness (Win/Linux) with success/failure signals, timings, and logs.

* **2B04 — Advanced Windows Internals** (4 stacks)
  Memory/Object Manager, threads/APC, minimal ETW.
  **BT:** Userland chain in lab (benign load + logging) with before/after comparison.

* **3B03 — Userland Exploitation II (info-leak + ROP/JOP)** (3 stacks)
  Platform-specific PoCs with harness.

* **4B03 — Heap Exploitation (didactic)** (3 stacks)
  UAF and tcache/fastbin (Linux); vtable/func-ptr (Windows).

* **5B05 — Kernel (Windows) fundamentals + local elevation (lab)** (5 stacks)
  KD/IOCTL/IRP, lab R/W primitive, safe elevation in VM.

* **6B02 — F3-CAP (userland → SYSTEM)** (2 stacks)
  Reproducible integration with defense.

---

### Phase 4 — Univac 1108 (Evasion, Persistence, and C2)

**Coverage:** **2028-10-01 → 2029-09-30**

* **8A — Initial Access & Covert Delivery (lab)**
  Local HTTP(S)/WS/DNS profiles on isolated network; benign staging.
  **BT:** Benign implant (innocuous tasks) with timing control and logging.

* **8B — Minimal Blue Track**
  Reproducible event collection (Win/Linux), minimal dashboard.
  **BT:** Before/after baseline (telemetry).

* **F4-B1 — Evasion I (artifact reduction)**
  Artifact matrix, build hardening, footprint.
  **BT:** Before/after measurement of the benign implant.

* **F4-B2 — Evasion II (telemetry-aware)**
  Experiments with ETW/logs and build adjustments.
  **BT:** Telemetry-aware adjustments with evidence.

* **9B — Implant Crypto & Packer v2**
  Encrypted config and didactic packing.
  **BT:** Packer v2 with validation.

* **F4-B3 — Cross-platform Persistence (rollback)**
  Verified install/start/stop/uninstall (Win/Linux).
  **BT:** Reversible persistence with cleanup checklist.

* **F4-B4 — Covert C2 & Traffic Profiling**
  Benign server/client; traffic profiling.
  **BT:** Lab C2 on isolated network with metrics.

* **F4-B5 — Covert Operations (lab)**
  End-to-end operation with OPSEC checklist.

* **F4-CAP — Integrated Operation (≈96 h)**
  Final reproducible delivery with defense.

---

### Phase 5 — YoneEvilHost (Kernel · Firmware · UEFI/Boot)

**Coverage:** **2029-10-01 → 2030-03-31**

* **F5-B1 — Kernel Observability & Toolchain**
  KD (Windows), kprobes/ftrace (Linux), signal mapping.
  **BT:** Signal↔event table and environment checklist (KD/kprobes/QEMU).

* **F5-B2 — Linux LKM & Telemetry**
  Benign LKMs with toggles/telemetry and load/rollback tests.
  **BT:** LKM with sysfs/procfs + stress + rollback.

* **F5-B3 — Windows Driver Fundamentals**
  High-level KMDF/WDM, minimal IOCTL and callbacks; KD.
  **BT:** Benign KMDF driver (echo IOCTL + callbacks).

* **F5-B4 — UEFI/OVMF & Bootflow**
  EDK II, benign DXE, NVRAM variables; Secure Boot (lab).
  **BT:** Benign DXE (inventory) with evidence and rollback.

* **F5-B5 — Rootkit-style PoCs (VM only)**
  Reversible and detectable PoCs (blue-side panel).

* **F5-CAP — Kernel/Firmware Blue-Aware**
  Reproducible integration and technical defense.

---

### Expected accumulated credits (at the end of the 24 months)

* **Sophia (4 courses):** ~12 cr
* **SANS CSF (3 courses):** ~12 cr
* **CLEP/DSST (1–2 exams, optional):** +6–12 cr
  **Total expected by 2027-09-30:** **24–36 cr** (without CLEP) · **30–48 cr** (with 1–2 CLEP)

---

## Deliverables and evidence (canonical format)

```
/cpp/
  cpp_run.sh            # reproduce PoC/lab with 1 command
/evidence/
  run.log               # execution timestamps
  checksums.txt         # sha256 of artifacts
  screenshots/          # if applicable
manifest.json           # versions, hashes, synthetic dataset
REPORT.md               # triage-ready (steps, replay, impact, mitigation)
SIGNATURE.asc           # VALIDSIG (GPG)
```

**Pre-delivery checklist:**
[ ] Reproducible on a clean VM · [ ] Exact steps + replay · [ ] Impact + mitigation · [ ] Complete `evidence/` + **VALIDSIG**

---

### KPIs per quarter (F1–F2 within the 24 months)

* ≥1–2 **CPP-R**/month (during BB Sprint: ≥3 submissions/month).
* **Sophia:** 1 course/month (Mar–Jun 2026).
* **MAD20/PMRP:** completed within the gap (Sep–Nov 2026).
* **CSF:** 1 course per quarter (Jan–Mar, Apr–Jun, Jul–Sep 2027).
