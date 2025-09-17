# Syllabus — Try Of Check Dogs (TOCD)

**Plan start:** October 1, 2025
**Cadence:** \~30 h/week (5 h/day, Mon–Sat)
**Methodology:** GDP (guided drills) · CPP-R (reproducible closures) · PAD (block mission) · MJT (mock job) · lab-only/OPSEC

**Malware Developer (benign)**

---

### Phase 1 — ENIAC (Fundamentals oriented to Malware Analysis)

**Coverage:** 2025-10-01 → 2026-06-30

### Core blocks

**0B01 — Linux/CLI/Bash & Ecosystem.** FHS, permissions/ACLs, text pipelines, find/tar/rsync, processes/signals, basic networking, packaging, lab hygiene · **BT:** Benign Loader/CLI with logging and error handling.
**Closure:** CPP-R per stack + PAD-0B01.

**1B01 — Toolchain, Debugging & VCS.** Git/flow, Make/CMake, flags/ASan/UBSan, gdb/lldb, strace/ltrace, perf/binutils · **BT:** Encrypted configuration (benign data) + strict validation.
**Closure:** CPP-R per stack + PAD-1B01.

**2B01–3B01 — Systems C I.** Pointers/layout, dynamic memory, I/O and mmap, safe binary parsing, intro to sockets, testing and light fuzzing · **BT:** Minimal telemetry and local summary for your utilities.
**Closure:** CPP-R utilities (hexdump, minimal parser) + PAD.

**4B01 — x86\_64/ABI/ASM.** SysV ABI and stack, syscalls, C↔asm integration, memory routines · **BT:** Benign LD\_PRELOAD “counter/echo” hook with reproducible evidence.
**Closure:** CPP-R for wrappers/syscalls + PAD.

**5B01 — Linking/ELF/PLT/GOT/LD\_PRELOAD.** ELF, dynamic linking, visibility, rpath/runpath, userland hooks.
**Closure:** CPP-R for LD\_PRELOAD hook + PAD.

**6B01 — Windows & PE Fundamentals.** DOS/NT headers, sections, imports/exports, reloc, TLS, tools.
**Closure:** CPP-R for a basic PE viewer + PAD.

**7B01 — Intro to Malware Analysis (safe triage).** Controlled static/dynamic flow, IOC extraction, minimal report.
**Closure:** CPP-R for reproducible triage + PAD.

---

### Phase 2 — IBM 1401 (Applied Reversing & Userland Execution)

**Coverage:** 2026-07-01 → 2026-09-30

### Core blocks

**0B04 — Applied Reversing I.** Static/dynamic pipeline, basic anti-analysis, single-layer unpack with minimal IAT · **BT:** Benign local loader and test harness.
**Closure:** CPP-R (reproducible unpack) + PAD.

**1B04 — Deep PE & In-Memory Loaders.** Practical PE, in-memory loaders (allocate/copy/protect/jump), manual mapping (intro) · **BT:** Usable PE parser + introductory manual mapping of a benign DLL with export execution.
**Closure:** CPP-R (PE parser, loader, manual map) + PAD.

**2B04 — Userland Execution & Mitigations.** CRT+LoadLibrary, APC queueing, process hollowing (intro), DEP/ASLR/CFG · **BT:** Reproducible comparison by technique with logging and artifact matrix.
**Closure:** Comparative CPP-R by technique + PAD.

---

### Phase 3 — Intel 4004 (Userland Internals & Exploitation)

**Coverage:** 2027-08-03 → 2028-07-31

### Core blocks

**0B04 — Process & Memory Internals.** PEB/TEB, regions, modules, heaps, TLS demo · **BT:** Build/telemetry switches + artifact matrix (modules/regions/TLS).
**Closure:** CPP-R (process/region map, PEB/TEB, TLS) + PAD.

**1B03 — Userland Exploitation I.** Stack overflow and basic ROP in lab binaries; DEP/ASLR mitigations · **BT:** Detection harness (Win/Linux) with success/failure signals, timings, and logs.
**Closure:** Educational exploit CPP-R + PAD.

**2B04 — Advanced Windows Internals.** Memory/Object Manager, threads/APC, minimal ETW · **BT:** Lab userland chain (benign loading + logging) with before/after comparison.
**Closure:** CPP-R (handles/regions/APC/ETW) + PAD.

**3B03 — Userland Exploitation II.** Info-leak + ROP/JOP (Win/Linux) with harness.
**Closure:** CPP-R per platform + PAD.

**4B03 — Heap Exploitation (didactic).** UAF and tcache/fastbin (Linux); vtable/func-ptr (Win).
**Closure:** PoC CPP-Rs + hardening + PAD.

**5B05 — Kernel (Win) fundamentals + local escalation (lab).** IOCTL/IRP, lab R/W primitive, didactic escalation.
**Closure:** CPP-R for IOCTL client + R/W + escalation in VM + PAD.

**6B02 — F3-CAP (userland → SYSTEM).** Reproducible integration with defense.

---

### Phase 4 — Univac 1108 (Evasion, Persistence, and C2)

**Coverage:** 2028-08-01 → 2029-07-31

### Core blocks

**8A — Initial Access & Covert Delivery (lab).** Local HTTP(S)/WS/DNS profiles in an isolated network; benign staging · **BT:** Benign implant (innocuous tasks) with timing control and logging.
**Closure:** CPP-R + PAD.

**8B — Minimal Blue Track.** Reproducible event collection, minimal dashboard · **BT:** Telemetry baseline and verification (before/after).
**Closure:** CPP-R + PAD.

**F4-B1 — Evasion I (artifact reduction).** Artifact matrix, build hardening, footprint · **BT:** Before/after measurement of the benign implant.
**Closure:** Before/after CPP-R + PAD.

**F4-B2 — Evasion II (telemetry-aware).** Tests with ETW/logs and build tuning · **BT:** Telemetry-aware adjustments with evidence.
**Closure:** Comparative CPP-R + PAD.

**9B — Implant Crypto & Packer v2.** Encrypted config and didactic packing · **BT:** Encrypted config + packer v2 with validation.
**Closure:** CPP-R + PAD.

**F4-B3 — Cross-platform Persistence (rollback).** Verified install/start/stop/uninstall (Win/Linux) · **BT:** Reversible persistence with cleanup checklist.
**Closure:** CPP-R + PAD.

**F4-B4 — Covert C2 & Traffic Profiling.** Benign server/client; traffic profiling · **BT:** Lab C2 in an isolated network with metrics.
**Closure:** CPP-R + PAD.

**F4-B5 — Covert Operations (lab).** End-to-end operation with OPSEC checklist.
**Closure:** CPP-R + PAD.

**F4-CAP — Integrated Operation.** Reproducible final delivery with defense.

---

### Phase 5 — YoneEvilHost (Kernel · Firmware · UEFI/Boot)

**Coverage:** 2029-02-01 → 2029-07-31

### Core blocks

**F5-B1 — Kernel Observability & Toolchain.** KD (Win), kprobes/ftrace (Linux), signal mapping · **BT:** Signal↔event table and environment checklist (KD/kprobes/QEMU).
**Closure:** CPP-R + PAD.

**F5-B2 — Linux LKM & Telemetry.** Benign LKMs with toggles/telemetry and load/rollback tests · **BT:** LKM with sysfs/procfs and stress + rollback.
**Closure:** CPP-R + PAD.

**F5-B3 — Windows Driver Fundamentals.** High-level KMDF/WDM, minimal IOCTL and callbacks; KD · **BT:** Benign KMDF driver with IOCTL echo + process/image callbacks.
**Closure:** CPP-R + PAD.

**F5-B4 — UEFI/OVMF & Bootflow.** EDK II, benign DXE, NVRAM variables; Secure Boot (lab) · **BT:** Benign DXE (inventory) with evidence and rollback.
**Closure:** CPP-R + PAD.

**F5-B5 — Rootkit-style PoCs (VM only).** Reversible and detectable PoCs (blue dashboard).
**Closure:** CPP-R + PAD.

**F5-CAP — Kernel/Firmware Blue-Aware.** Reproducible integration with defense.

---

### Assessment and Evidence

* **CPP-R (per stack/block):** `cpp/run.sh` → `cpp/evidence/<TS>/` with `run.log`, `checksums.txt`, `manifest.json`, screenshots (when applicable). Idempotent, clean VM.
* **PAD (per block):** integrated mission with brief defense.
* **MJT (when applicable):** realistic case with clear limits.
* **Companion detection (Builder Track):** rules/queries (YARA/Sigma/KQL) for each benign build.

---

### External Milestones

* **Bug Bounty:** starting 2026-09-30, target 9 months, in moderate parallel with TOCD.
* **BackLogs with university:** 6–8 h/week of maintenance and mini-labs.

---

### Ethics and OPSEC

All work is benign and runs in an isolated VM with snapshots and rollback. No third-party targets, no external network in CPP-R/MJT runs, encrypted briefs when applicable, and strict evidence discipline.
