# Schedule IBM 1401

**Syllabus & Schedule** (Quarters · Blocks · Stacks)

- **Coverage:** 1-Dec-2026 → 31-May-2027
- **Cadence:** ~30 h/week (5 h/day, Mon–Sat)
- **Methodology:** **CPP-R** (reproducible closures) + **PAD** (Practical Aptitude Drill: block-integrated mission) + **GDP** (guided drills) · **Lab-only** (OPSEC/Legal)

**Global outcomes (F2):** 6–8 CPP-Rs + PADs, reversing report with reproducible unpack, usable PE parser, userland loader with ≥2 techniques, reversible process hollowing PoC, lab logbook and minimal OPSEC checklist.

**Builder Track (F2):** benign local loader with harness, manual mapping (intro) of benign DLL, reproducible per-technique comparison (artifact matrix + logging).

### Quarter Map (high level)

* **Q1 (1-Dec-2026 → 31-Jan-2027):** 0B04 Applied Reversing I (6 weeks)

* **Q2 (1-Feb-2027 → 22-Mar-2027):** 1B04 Deep PE & In-Memory Loaders (6 weeks)

* **Q2 (23-Mar-2027 → 31-May-2027):** 2B04 Userland Execution & Mitigations (10 weeks)

* **Express Module (parallel):** F2-Express — Tools & Harness — check-ins distributed at the close of each block.

---

### Q1 — Detailed Schedule

### 0B04 — Applied Reversing I (6 weeks · ~180 total hours)

> **Objective:** Static/dynamic pipeline (Ghidra/IDA, x64dbg/WinDbg), **basic anti-analysis**, **1-layer unpack** (UPX-like), minimal IAT reconstruction, supporting scripting (Python).

**BT:** **Benign local loader** and **test harness** (controlled logging) — **CPP-R**.

| Stack               | Thematic cluster (examples)                     | Est. hours | Key tools                     | Assignment (CPP-R) · Due                                                      |
| ------------------- | ----------------------------------------------- | ---------: | ----------------------------- | ----------------------------------------------------------------------------- |
| Static              | strings/signatures, CFG, calling convention     |       24 h | Ghidra/IDA-free, rizin/Cutter | **CPP-R-0B04-1:** reproducible static report · **Sun 20-Dec-2026**            |
| Dynamic (Win)       | x64dbg/WinDbg: breakpoints, memory, dumps       |       24 h | x64dbg/WinDbg                 | **CPP-R-0B04-2:** dynamic traces + evidence · **Sun 27-Dec-2026**             |
| Basic anti-analysis | time checks, `IsDebuggerPresent`, trivial traps |       18 h | WinAPI                        | **CPP-R-0B04-3:** simple bypass with evidence · **Sun 3-Jan-2027**            |
| 1-layer unpack      | OEP, clean dump, mini IAT rebuild               |       30 h | PE-bear, PE-sieve             | **CPP-R-0B04-4:** **reproducible unpack** + minimal IAT · **Sun 10-Jan-2027** |
| Support scripting   | decoders/parsers (XOR/RC4-lite) with tests      |       12 h | Python                        | **CPP-R-0B04-5:** decoder + validation suite · **Sun 17-Jan-2027**            |
| Integration         | End-to-end reversing                            |       72 h | All tooling                   | **CPP-R-0B04-6:** final report + methodology · **Sun 24-Jan-2027**            |

- **PAD (Exam) — PAD-0B04**
- **Date:** 26-Jan-2027 (Tuesday)
- **Deliverable:** reversing methodology + **reproducible unpack** (minimal IAT), screenshots, `manifest.json`, `checksums.txt`, `run.log`.

---

### Q2 - Detailed Schedule

### 1B04 - Deep PE & In-Memory Loaders (6 weeks · ~180 total hours)

> **Objective:** PE in practice (headers, sections, imports/exports, relocations, TLS) and **in-memory loaders** (allocate/copy/protect/jump) with **intro to manual mapping**.

**BT:** **Usable PE parser** + **manual mapping (intro)** of benign DLL (export executed) — **CPP-R**.

| Stack                   | Thematic cluster (examples)                                      | Est. hours | Key tools                | Assignment (CPP-R) · Due                                                                    |
| ----------------------- | ---------------------------------------------------------------- | ---------: | ------------------------ | ------------------------------------------------------------------------------------------- |
| PE Layout               | DOS/NT headers, sections, time-date stamp, hashes                |       24 h | dumpbin/llvm-objdump     | **CPP-R-1B04-1:** **PE parser** (headers/sections/imports) · **Sun 2-Feb-2027**             |
| API & Memory            | `VirtualAlloc{Ex}`, `WriteProcessMemory`, `Create{Remote}Thread` |       24 h | WinAPI                   | **CPP-R-1B04-2:** **local loader** (benign shellcode) + error handling · **Sun 9-Feb-2027** |
| Manual Mapping (intro)  | load DLL without `LoadLibrary` (partial relocs)                  |       30 h | Own tooling              | **CPP-R-1B04-3:** **basic manual map** + export execution · **Sun 16-Feb-2027**             |
| Diagnostics & Stability | permissions, offsets, alignment, silent crashes                  |       18 h | Process Hacker, PE-sieve | **CPP-R-1B04-4:** stability report + evidence · **Sun 23-Feb-2027**                         |
| Integration             | End-to-end loader                                                |       84 h | All tooling              | **CPP-R-1B04-5:** consolidated loader + tests · **Sun 2-Mar-2027**                          |

- **PAD (Exam) - PAD-1B04**
- **Date:** 4-Mar-2027 (Friday, adjusted)
- **Deliverable:** loader design, memory diagram, test harness, reproducible evidence.

---

### 2B04 — Userland Execution & Mitigations (10 weeks · ~300 total hours)

> **Objective:** Implement ≥2 userland execution/injection techniques; understand effects of **DEP/ASLR/CFG**; **process hollowing PoC** in lab; artifact comparison.

**BT:** **Reproducible per-technique comparison** (artifact matrix + logging) — **CPP-R**.

| Stack                     | Thematic cluster (examples)                  | Est. hours | Key tools       | Assignment (CPP-R) · Due                                                                |
| ------------------------- | -------------------------------------------- | ---------: | --------------- | --------------------------------------------------------------------------------------- |
| CRT + LoadLibrary         | `CreateRemoteThread + LoadLibrary` (classic) |       24 h | WinAPI          | **CPP-R-2B04-1:** **CRT+LL** mode with reproducible logging · **Sun 9-Mar-2027**        |
| APC Queueing              | early-bird, synchronization and risks        |       24 h | APC APIs        | **CPP-R-2B04-2:** **APC** mode with evidence · **Sun 16-Mar-2027**                      |
| Hollowing (intro)         | comparison with module stomping              |       30 h | Own tooling     | **CPP-R-2B04-3:** **hollowing PoC** (benign lab) + safe reversion · **Sun 23-Mar-2027** |
| Mitigations & Obfuscation | DEP/ASLR/CFG; hash-based resolution; strings |       18 h | Various         | **CPP-R-2B04-4:** comparison of traces and surfaces · **Sun 30-Mar-2027**               |
| PPID Spoofing             | PPID change, `CreateProcess` options         |       18 h | WinAPI          | —                                                                                       |
| Module Stomping           | alternative to hollowing, contrast           |       18 h | Tooling         | —                                                                                       |
| Syscalls intro            | basic operations without WinAPI              |       18 h | Direct syscalls | —                                                                                       |
| Integration               | Loader with selectable modes                 |       90 h | All tooling     | **CPP-R-2B04-5:** **final comparison** (matrix + report) · **Sun 6-Apr-2027**           |
| Testing & Stabilization   | stability testing, edge cases                |       60 h | Test harness    | **CPP-R-2B04-6:** test suite + benchmarks · **Sun 13-Apr-2027**                         |

- **PAD (Exam) — PAD-2B04**
- **Date:** 15-Apr-2027 (Friday, adjusted)
- **Deliverable:** integrated mission (≥2 techniques implemented, complete evidence, mitigation analysis).

---

### Final deliverables of Phase 2

| Type                      | Quantity | Description                                                |
| ------------------------- | -------- | ---------------------------------------------------------- |
| **CPP-Rs**                | 6–8      | Reproducible projects (reversing, unpack, parser, loaders) |
| **PADs**                  | 2        | Integrated missions (Reversing + Execution)                |
| **Reversing report**      | 1        | Reproducible unpack with IAT and analysis                  |
| **PE parser**             | 1        | Usable supporting tool                                     |
| **Functional loader**     | 1        | ≥2 execution techniques                                    |
| **Process hollowing PoC** | 1        | Reversible and controlled in VM                            |
| **Evidence**              | Complete | Logs, hashes, manifests, screenshots                       |


### Ongoing practice in Phase 2

**HackTheBox / HackMyVM / CyberSec / Flare-On:**

* **Frequency:** 1–2 machines/week (fluency maintenance)
* **Focus:** RE/unpacking/malware analysis labs
* **Writeups:** document interesting cases in repo

### Weekly KPIs

* **0–1 CPP-Rs** in progress (some close biweekly)
* **1–2 CTFs/platform** (skills maintenance)
* **Reversing of 2–3 binaries** (small exercises)

### Ethics and OPSEC

* **Lab-only:** VM with NAT, snapshots, proven rollback
* **Benign artifacts:** every CPP-R is safe to run
* **Zero third parties:** no real targets, synthetic datasets
* **Encrypted briefs:** PAD statements via EMP if applicable
* **Signed tags:** each CPP-R with GPG signature

### Grading & Milestones (Phase 2)

* **CPP-R:** weekly closures (see tables above, mostly Sundays).

* **PADs (Exams):** at the close of each block (dates above, adjusted).

* **Phase 2 Final Sign-off:** **Fri 23-May-2027** — all CPP-R/PAD complete, reproducible evidence, OPSEC checklist signed, one-command repro OK.

* **Rubric:** A/B/C/Redo (reproducibility, stability, technical clarity, evidence).

### Express Module (parallel)

**F2-Express — Tools & Harness**

**Check-ins:** at the end of each block (0B04, 1B04, 2B04)

**Deliverable:** **harness** skeleton, logging design, evidence pipeline; **OPSEC checklist** signed per block.

### KPIs per quarter (Phase 2)

* **CPP-Rs:** ≥1–2/month (6–8 total in Phase 2)
* **PADs:** ≥1/block (2 total PADs)
* **Functional loader:** ≥1 with ≥2 verified techniques
* **Transition to Phase 3:** 100% of blocks completed with CPP-R/PAD approved
