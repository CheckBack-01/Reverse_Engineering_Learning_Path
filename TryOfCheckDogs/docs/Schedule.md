# Public Calendar — TOCD (Quarters, Phases, Blocks, and Stacks)

**Coverage:** 2025-10-01 → 2029-07-31
**Time dedication:** 5 h/day (Mon–Sat)
**Methodology:** CPP-R (reproducible closures) + PAD (Practical Aptitude Drill: block-integrated mission) + GDP (guided drills) · Applied OPSEC/Legal

### Nomenclature

* For F1–F3 use **XBYY** (e.g., 0B04) → **X** = block index (starting at 0) · **YY** = number of stacks.
* For F4 use **F4-B1…B5** and modules **8A/8B/9B**.
* For F5 use **F5-B1…B5** for thematic clarity.

### Quick View by Phase (durations)

* **Phase 1 (Fundamentals + MA lens)** · Q1–Q3 · \~9 months
* **Phase 2 (Applied analysis and first execution paths)** · Q4 · \~3 months
* **TOCD pause:** 2026-09-30 → 2027-08-02 (Bug Bounty + University; BackLogs 6–8 h/week)
* **Phase 3 (Internals & userland/kernel intro)** · Q7–Q9 · \~12 effective months
* **Phase 4 (Evasion, Persistence, C2 + Blue)** · Q10–Q12 · \~12 months
* **Phase 5 (Kernel/Firmware/UEFI/Boot)** · Q13–Q14 · 2029-02-01 → 2029-07-31
  (F5 begins with a Pre-flight Bridge in parallel with the close of F4; controlled load to avoid breaking cadence.)

---

### Q1 — 2025-10-01 → 2025-12-31

**Phase 1 (start)**

**0B01 — Linux/CLI/Bash & Ecosystem · 1 stack**
Stacks/topics: FHS, permissions (chmod/ACL), pipelines (grep/sed/awk), backups/rsync, processes/signals, basic networking, apt/dpkg, lab hygiene · **BT:** Benign Loader/CLI with logging and error handling.

**1B01 — Toolchain, Debugging & VCS · 1 stack**
Stacks/topics: Git/PRs/hooks, Make/CMake, binutils, compiler flags, sanitizers, gdb/lldb, strace/ltrace, perf · **BT:** Encrypted configuration (benign data) + strict validation.

---

### Q2 — 2026-01-01 → 2026-03-31

**Phase 1 (continuation)**

**2B01 — Systems C I (start) · 1 stack**
Pointers/ownership, safe strings, I/O (stdio vs syscalls), mmap/buffers · **BT:** Minimal telemetry and local summary for utilities.

**3B01 — Systems C I (close) · 1 stack**
Testing/coverage, light fuzzing, sockets (blocking/non-blocking).

**4B01 — x86\_64/ABI/ASM · 1 stack**
SysV calling convention, stack frames, syscalls, C↔asm, benchmarks · **BT:** Benign LD\_PRELOAD “counter/echo” hook with evidence.

---

### Q3 — 2026-04-01 → 2026-06-30

**Phase 1 (close)**

**5B01 — Linking/Loading (ELF, PLT/GOT, LD\_PRELOAD) · 1 stack**
ELF headers/relocs/symbols, shared libraries/visibility, hooks via LD\_PRELOAD, rpath/runpath.

**6B01 — Windows & PE Fundamentals for Analysts · 1 stack (new)**
PE layout, sections, imports/exports, timestamps, hashes/signatures; reproducible PE triage.

**7B01 — Intro to Malware Analysis: Safe Triage & IOCs · 1 stack (new)**
strings/regex → IOC table, YARA-lite (static), dynamic logging (benign harness), reporting and ethics.

---

### Q4 — 2026-07-01 → 2026-09-30

**Phase 2 (compact)**

**0B04 — Applied Reversing I · 4 stacks**
Static (strings/CFG/conventions), dynamic (x64dbg/WinDbg), basic anti-analysis, single-layer unpack + minimal IAT, support scripting (Python) · **BT:** Benign local loader and test harness.

**1B04 — Deep PE & In-Memory Loaders · 4 stacks**
Practical PE, in-memory loaders (allocate/copy/protect/jump), manual mapping (intro) · **BT:** Usable PE parser + introductory manual mapping of a benign DLL with export execution.

**2B04 — Userland Execution & Mitigations · 4 stacks**
CRT+LoadLibrary, APC queueing, process hollowing (intro), DEP/ASLR/CFG · **BT:** Reproducible comparison by technique (logging + artifact matrix).

**Bug Bounty start (moderate parallel):** 2026-09-30.

---

### Q5–Q6

**TOCD pause (Bug Bounty + University)** · BackLogs (reinforcement 6–8 h/week)

---

### Q7 — 2027-08-03 → 2027-11-30

**Phase 3 (start, post-pause)**

**0B04 — Process & Memory Internals (userland, Win/ELF) · 4 stacks**
PEB/TEB, region map, modules/heaps, methodology/evidence · **BT:** Build/telemetry switches + artifact matrix (modules/regions/TLS).

---

### Q8 — 2027-12-01 → 2028-03-31

**Phase 3 (continuation)**

**1B03 — Userland Exploitation I (basic ROP) · 3 stacks**
Lab vulnerable case, gadget search/ROP intro, mitigations (DEP/ASLR) · **BT:** Detection harness (Win/Linux) with success/failure signals, timings, and logs.

**2B04 — Advanced Windows Internals · 4 stacks**
Memory/Object Manager, threads/APC, minimal ETW · **BT:** Lab userland chain (benign loading + logging) with before/after comparison.

---

### Q9 — 2028-04-01 → 2028-07-31

**Phase 3 (close)**

**3B03 — Kernel (Windows) fundamentals + local escalation (lab) · 3 stacks**
KD/IOCTL/IRP, lab R/W primitive, safe escalation in VM.

**4B02 — F3-CAP (userland → SYSTEM) · 2 stacks**
Integrated PoC + technical defense.

---

### Q10 — 2028-08-01 → 2028-11-30

**Phase 4 (start)**

**8A — Initial access & covert delivery (lab) · module**
Local HTTP(S)/WS/DNS profiles in an isolated network, benign staging · **BT:** Benign implant (innocuous tasks) with timing control and logging.

**8B — Minimal Blue track · module**
Reproducible event collection (Win/Linux), minimal dashboard · **BT:** Before/after baseline to observe impact.

**F4-B1 — Evasion I (artifact reduction) · block**
Artifact matrix, build hardening, footprint · **BT:** Before/after measurement of the benign implant.

---

### Q11 — 2028-12-01 → 2029-03-31

**Phase 4 (continuation)**

**F4-B2 — Evasion II (telemetry-aware) · block**
Testing with ETW/logs and build tuning · **BT:** Telemetry-aware adjustments with evidence.

**9B — Implant Crypto & Packer v2 · module**
Encrypted config and didactic packing · **BT:** Packer v2 with validation.

**F4-B3 — Cross-platform persistence (rollback) · block**
Verified install/start/stop/uninstall (Win/Linux) · **BT:** Reversible persistence with cleanup checklist.

---

### Q12 — 2029-04-01 → 2029-07-31

**Phase 4 (close)**

**F4-B4 — Covert C2 & traffic profiling · block**
Benign server/client, traffic profiling · **BT:** Lab C2 in an isolated network with metrics.

**F4-B5 — Covert operations (lab) · block**
End-to-end operation with OPSEC checklist.

**F4-CAP — Integrated operation (96 h)**
Reproducible final delivery with defense.

---

### Q13 — 2029-02-01 → 2029-05-31

**Phase 5 (start)**

**Pre-flight Bridge (1–2 weeks)**
KD/kprobes/QEMU-OVMF ready; blue baseline; rollback policies.

**F5-B1 — Kernel Observability & Toolchain · block**
KD (Win), kprobes/ftrace (Linux), signal mapping · **BT:** Signal↔event table and environment checklist.

**F5-B2 — Linux LKM & Telemetry · block**
Benign LKMs with toggles/telemetry and load/rollback tests · **BT:** LKM with sysfs/procfs + stress test.

---

### Q14 — 2029-06-01 → 2029-07-31

**Phase 5 (close)**

**F5-B3 — Windows Driver Fundamentals · block**
High-level KMDF/WDM, minimal IOCTL and callbacks; KD · **BT:** Benign KMDF driver (IOCTL echo + callbacks).

**F5-B4 — UEFI/OVMF & Bootflow · block**
EDK II, benign DXE, NVRAM variables; Secure Boot (lab) · **BT:** Benign DXE (inventory) with evidence and rollback.

**F5-B5 — Rootkit-style PoCs (VM only) · block**
Reversible and detectable PoCs (blue-team dashboard).

**F5-CAP — Kernel+firmware chain with technical defense**
Reproducible integration and final defense.
