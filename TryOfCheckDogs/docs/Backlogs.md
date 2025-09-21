# Backlogs — TOCD

**Purpose.** Maintain a prioritized, clear, and actionable backlog of pending work for all TOCD phases, aligned with the current methods (**GDP**, **CPP-R**, **PAD**) and start dates: **Phase 1 begins 2025-10-01**. This document enables planning, measurement, and progress auditing without changing the Syllabus.

---

### 1) How this Backlog is organized

**Boards (columns):**

* **Now (WIP ≤ 6):** in execution this week.
* **Next (2–4 weeks):** ready to start in the next cycle.
* **Later (3+ weeks):** planned without an immediate date.
* **Icebox:** parked ideas or awaiting prerequisites.
* **Blocked:** depends on third parties or a decision.

**Standard labels:**

* `phase:F1..F5` · `block:0B01,1B04,...`
* `type:lab | docs | tooling | opsec | blue | builder`
* `prio:P0 | P1 | P2 | P3` (P0 critical)
* `size:S | M | L` (≤4h/≤2d/>2d effective)
* `status:ready | in-progress | review | done`

**Workflow cadence:**

* Weekly **grooming** (30–40 min).
* **Demo** and **retro** at the close of each block (together with the **PAD**).
* **OPSEC review** in every **CPP-R**.

**DoR (Definition of Ready):**

* One-sentence objective, declared risks and boundaries.
* Inputs available (benign dataset, VM/snapshot).
* Defined acceptance criteria and evidence.

**DoD (Definition of Done):**

* `cpp/run.sh` **one-command**, idempotent.
* `cpp/evidence/<TS>/` with `run.log`, `checksums.txt`, `manifest.json`, screenshots.
* README with prerequisites and verification steps.
* Signature/tag if applicable (signed `tag` per block).

---

### 2) Global backlog (cross-phase)

**P0**

* Generic `tooling:check_env.sh` and `manifest.json` template (F1→F5).
* **GPG** pipeline for encrypted briefs (keys, `VALIDSIG` in manifest).
* Uniform **snapshot/rollback** scripts (QEMU/VirtualBox/VMware).
* **GDP**, **CPP-R**, and **PAD** templates in `templates/` (updated to CPP-R).

**P1**

* **Minimal telemetry** harness (local logs, ETW/Sysmon/auditd opt-in).
* Basic CI: `shellcheck`, `markdownlint`, lab structure.
* **Evidence diff** script (before/after comparison).

**P2**

* Minimal “Blue” board (lab YARA/Sigma/KQL queries).
* Study metrics: time per GDP/CPP-R, success rate, retries.

---

### 3) Backlogs by phase and block

### Phase 1 — ENIAC (2025-10-01 → 2026-06-30)

**0B01 — Linux/CLI/Bash & Ecosystem**

* P0: FHS/ACL GDP (synthetic dataset + verification).
* P0: **CPP-R** incremental backup with checksums.
* P1: Logs→CSV pipeline with error control.
* P1: Permissions/signals quiz and command table.
* P2: Reproducible “lab hygiene” checklist.

**1B01 — Toolchain, Debugging & VCS**

* P0: Generic Makefile (asan/ubsan/tests/`clean`).
* P1: memcpy/memmove micro-bench + `perf`.
* P1: Core dump hunting + write-up.
* P2: Git hooks (pre-commit: linters).

**2B01–3B01 — Systems-C I**

* P0: Own **hexdump** (offset/ASCII) + tests.
* P1: **safe-strings** mini-lib with coverage ≥80%.
* P1: Binary viewer via `mmap` with error contracts.
* P2: Parser fuzz (20 min, no crashes).

**4B01 — x86\_64/ABI/ASM**

* P0: `syscall` wrappers (write/getpid) without libc.
* P1: `memset/memcmp` in asm with cross-tests.
* P2: Comparative bench asm vs C.

**5B01 — Linking/ELF/PLT/GOT/LD\_PRELOAD**

* P0: Minimal ELF parser (sections/symbols).
* P1: **LD\_PRELOAD** hook for `open/fopen` + before/after evidence.
* P2: `rpath/runpath` PoC with `patchelf`.

**6B01 — Windows & PE Fundamentals (new)**

* P0: Reproducible PE triage (hashes + sections).
* P1: Imports/exports extraction with manifest.
* P2: PE mini-report (fixed format).

**7B01 — Intro MA: Safe Triage & IOCs (new)**

* P0: Reproducible **strings→IOC CSV** pipeline.
* P1: **YARA-lite** with local verification.
* P2: Dynamic logging harness (no external network).

---

### Phase 2 — IBM 1401 (2026-07-01 → 2026-09-30)

**0B04 — Applied Reversing I**

* P0: Reproducible static report (Ghidra/rizin).
* P0: Dynamic traces x64dbg/WinDbg + stable dump.
* P0: **Single-layer unpack** + mini IAT rebuild.
* P1: Python decoders (XOR/RC4-lite) with tests.

**1B04 — Deep PE & In-Memory Loaders**

* P0: Usable **PE parser** (headers/sections/imports).
* P0: Local loader (allocate/copy/protect/jump) with error handling.
* P1: **Manual mapping (intro)** of a benign DLL + export.
* P2: Stability report (permissions/offsets/relocs).

**2B04 — Userland Execution & Mitigations**

* P0: **CRT+LoadLibrary** and **APC** modes in a single loader.
* P0: **Hollowing PoC** in a lab binary + rollback.
* P1: Surface comparison (DEP/ASLR/CFG) with evidence.

---

### Phase 3 — Intel 4004 (2027-08-03 → 2028-07-31)

**0B04 — Process & Memory Internals**

* P0: `process/region map` → JSON/CSV.
* P1: **PEB/TEB walk** with key fields.
* P2: **TLS callback** demo in a lab DLL.

**1B03 — Userland Exploitation I (basic ROP)**

* P0: Vulnerable binary + automatic harness.
* P0: **Basic ROP** with observable, safe effect.
* P1: Hardening that neutralizes the PoC.

**2B04 — Advanced Windows Internals**

* P0: **handle map** with types and typical leaks.
* P1: **region map** with permissions and heuristics.
* P1: **APC** demo with logging.
* P2: Reproducible **ETW** capture.

**3B03 — Userland Exploitation II (leak + ROP/JOP)**

* P0: Reproducible leak (Win).
* P0: **ROP/JOP chain** (Win/Linux) with `mprotect`/API.
* P1: Harness per exploit (success/failure/timings).

**4B03 — Heap Exploitation**

* P0: **UAF PoC (Win)** controlling a function pointer.
* P0: **tcache/fastbin PoC (Linux)** with measurable effect.
* P1: Hardening with ASan/UBSan.

**5B05 — Kernel (Win) fundamentals + local elevation**

* P0: **IOCTL** client (enumerate/invoke).
* P0: Stable **R/W** primitive with tests.
* P1: Pedagogical **elevation** to SYSTEM in VM + rollback.

**6B02 — F3-CAP (userland → SYSTEM)**

* P0: Integrated chain + reproducible evidence.
* P1: Technical defense and OPSEC checklist.

---

### Phase 4 — Univac 1108 (2028-08-01 → 2029-07-31)

**8A — Initial Access & Covert Delivery**

* P0: Reproducible delivery profile (lab HTTP(S)/WS/DNS).
* P1: **Staging** script with verification.

**8B — Minimal Blue Track**

* P0: Reproducible collection (Sysmon/ETW/auditd).
* P1: Minimal dashboard with metrics.

**F4-B1 — Evasion I**

* P0: Artifact matrix (file/registry/net/mem/proc).
* P1: Hardened build vs baseline (evidence).

**F4-B2 — Evasion II (telemetry-aware)**

* P0: Tests with telemetry and signal summary.
* P1: Build adjustments + comparison.

**9B — Implant Crypto & Packer v2**

* P0: Encrypted config + validation.
* P1: Reproducible packer v2.

**F4-B3 — Cross-platform Persistence (+ rollback)**

* P0: `install/start/stop/uninstall` Win/Linux with tests.
* P1: Audit and cleanup without residue.

**F4-B4 — Covert C2 & Traffic Profiling**

* P0: C2 server + client with check-in and benign tasks.
* P1: Simple traffic profiling.

**F4-B5 — Covert Operations (lab)**

* P0: Reproducible coordinated operation.
* P1: Evidence package + debrief.

**F4-CAP — Integrated Operation**

* P0: End-to-end chain + defense.
* P1: Signed OPSEC checklist.

---

### Phase 5 — YoneEvilHost (2029-02-01 → 2029-07-31)

**Pre-flight**

* P0: Verified KD/kprobes/OVMF; “blue” baseline; recovery plan.

**F5-B1 — Kernel Observability & Toolchain**

* P0: KD (Win) playbook and tracing recipe (Linux).
* P1: Signal↔event table (ETW/Sysmon/auditd).

**F5-B2 — Linux LKM & Telemetry**

* P0: Skeleton LKM + toggles + tests.
* P1: kprobes/tracepoints + export to userland.
* P1: Stress + rollback checklist.

**F5-B3 — Windows Driver Fundamentals**

* P0: KMDF driver (INF, test signing, IOCTL echo).
* P1: Process/image callbacks + benign filters.
* P1: Stability report/BSOD triage.

**F5-B4 — UEFI/OVMF & Bootflow**

* P0: EDK II environment + clean build.
* P1: Inventory DXE + NVRAM variables.
* P1: DXE in VM + Secure Boot notes.

**F5-B5 — Rootkit-style PoCs (VM)**

* P0: Linux PoC (kprobes/ftrace) with toggles.
* P1: Windows PoC (callbacks) with rollback.
* P1: YARA/Sigma/KQL rules and before/after comparison.

**F5-CAP**

* P0: kernel+firmware chain + “blue” dashboard + rollback.
* P1: Defense and final package.

---

## 4) “Builder Track” backlogs (benign tool creation)

**F1–F2 (userland)**

* P1: C hexdump/patcher utility with tests.
* P1: Minimal ELF/PE parser.
* P2: LD\_PRELOAD demo (counter/echo).

**F3–F4 (benign implant/loader)**

* P1: Loader with CRT+LL/APC modes and logging.
* P1: Packer v2 + encrypted config.
* P2: Reversible persistence and lab C2.

**F5 (kernel/firmware)**

* P1: LKM with metrics and toggles.
* P1: KMDF driver with IOCTL and callbacks.
* P2: Benign DXE with boot log.

---

### 5) Risks and dependencies

* **Toolchains:** versions (WDK/VS, edk2, clang/gcc) must be pinned in `manifest.json`.
* **Real time:** reserve rollback slots in kernel/firmware practices.
* **OPSEC:** use of real artifacts is prohibited; everything **benign** and **lab-only**.
* **Compatibility:** matrices per hypervisor/host (CPU flags, VT-x/AMD-V, Secure Boot).

---

### 6) Tracking metrics

* % of **CPP-R** with **one-command** repro and complete evidence.
* **GDP** coverage per stack and hit rate.
* Average execution time and number of retries per **CPP-R**.
* Telemetry deltas (before/after) in F4/F5.
* P0 incidents resolved per month.
