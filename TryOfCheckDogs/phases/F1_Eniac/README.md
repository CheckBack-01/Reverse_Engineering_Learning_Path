# Phase 1 — ENIAC (Fundamentals with a Malware Analysis lens)

**Start:** 2025-10-01
**Target role:** Reverse Engineer (Entry) oriented to Malware Analysis
**Security:** Lab-only, benign artifacts, NAT network, encrypted briefs (GPG), reproducible evidence

---

### Scope

Phase 1 builds low-level fluency in **Linux/CLI**, a professional **toolchain**, **Systems-C**, **x86\_64/ABI**, and **ELF/PLT/GOT** with **LD\_PRELOAD**, adding a first layer of **Malware Analysis**: controlled **triage**, **PE** fundamentals, **hash/strings/metadata** discipline, and **evidence**. You will deliver small, verifiable utilities and learn to reason about memory, calling conventions, linking/loading, and static/dynamic triage under **OPSEC**.

---

### Methodology

* **GDP (Guided Drills Protocol):** short, verified drills per topic (Composite Stack Day A/B structure).
* **CPP-R (Proof of Concept Reproducible):** “one-command” reproducible closure per **Composite Stack** with `cpp/run.sh`, `manifest.json`, and `cpp/evidence/` (replaces PBR).
* **PAD (Practical Aptitude Drill):** block-integrated mission with report and verification.
* **MJT (Mock Job Test):** bimonthly, triage with minimal context.
* **Encrypted Mission Protocol:** briefs/resources travel signed + encrypted.
* **Repo/OPSEC:** VM snapshots, benign datasets, no third parties.

---

### Phase-level outcomes

* **8–12 CPP-R** with evidence packages and verified **idempotence**.
* 1 system utility in **C** (base Makefile + mini local CI).
* 1 simple **hexdump/patcher** with tests.
* 1 **LD\_PRELOAD hooking demo** in userland (documented and safe).
* 1 **mini PE triage report** (hashes, imports, sections, IOCs) on a benign sample.
* **Lab logbook**, **OPSEC** checklist, and **signed tags** per block.

---

### How the phase is organized

**Nomenclature.** Blocks use codes like `0B01` (first digit = block index). A block may cover several **stacks** (Composite Stack).

### 0B01 — Linux/CLI/Bash & Ecosystem (MA-aware)

**Objective.** Console mastery; files/text; permissions/processes; lab hygiene; reproducible pipelines for triage.
**Highlights.** FHS and permissions (chmod/ACL), pipes/grep/sed/awk, `find/xargs/tar/rsync`, `ps/kill/nohup/jobs`, `/proc`, `apt/dpkg`; synthetic datasets for GDP.
**CPP-R (examples).** Incremental backup with verification; logs → CSV pipeline with checksums.
**PAD (evidence).** VM FHS diagram; permissions table; pipeline flow with validation.
**· BT:** **Benign Loader/CLI** with logging and error handling, reproducible.

### 1B01 — Toolchain, Debugging & VCS

**Objective.** Compile, link, and debug with judgment; measure and record diagnostics.
**Highlights.** Git workflow, Make/CMake, gcc/clang flags, **sanitizers**, gdb/lldb, strace/ltrace, perf, binutils.
**CPP-R (examples).** Generic Makefile (asan/ubsan), coredump-hunt with report.
**PAD (evidence).** Failure report with traces and documented fix.
**· BT:** **Encrypted configuration** (benign data) + strict validation (declared errors).

### 2B01–3B01 — Systems-C I (two stacks)

**Objective.** Memory and pointers, low-level I/O, contracts, and safe parsing.
**Highlights.** pointers/`const`/`restrict`, structs/bitfields, `malloc/free`, `errno` and contracts, `stdio` vs syscalls, buffers, `mmap`; safe binary parsing; basic sockets; testing and light fuzzing.
**CPP-R (examples).** Own **hexdump**; mini **safe-strings** + tests; mini viewer via `mmap`.
**PAD (evidence).** Function specifications; threats and mitigations.
**· BT:** **Minimal telemetry** (structured logs) and **local summary** for utilities.

### 4B01 — x86\_64 Architecture & ABI; Practical Assembly

**Objective.** Conventions, stack, syscalls, C↔asm.
**Highlights.** SysV x86\_64 CC; prologue/epilogue; callee-saved; syscalls and `errno`; `inline asm`; passing `struct`; conceptual contrast Windows x64 vs SysV.
**CPP-R (examples).** `memcmp/memset` in asm with cross-tests; syscall wrappers without libc.
**PAD (evidence).** Stack diagrams; comparative micro-bench.
**· BT:** **LD\_PRELOAD hook** “counter/echo” (benign) with evidence package.

### 5B01 — Linking, Loading & Formats (ELF, PLT/GOT, LD\_PRELOAD)

**Objective.** Symbol resolution and controlled interception in userland.
**Highlights.** ELF headers/sections/segments/relocations/symbols; static vs dynamic; PIC/PIE; PLT/GOT & lazy binding; `ldd`, `patchelf`, `objdump/readelf`; visibility; **LD\_PRELOAD**; PE vs ELF contrast.
**CPP-R (examples).** Minimal ELF parser; hook for `open/fopen`; control of `rpath/runpath` with `patchelf`.
**PAD (evidence).** Linking report; **before/after** symbol tables for the hook.

### 6B01 — Windows & PE Fundamentals for Analysts (new)

**Objective.** Understand **PE** at analyst level: headers, sections, imports/exports, timestamps, hashes/signatures.
**Highlights.** PE layout, `pefile/sigcheck/dumpbin`, imports/exports, resources, timestamp sanity, hashsets (SHA-256), Authenticode signatures (read).
**CPP-R (examples).** **Benign PE triage**: hash + imports + sections → short reproducible report.
**PAD (evidence).** Section → characteristics table; import tree with notes.

### 7B01 — Intro to Malware Analysis: Safe Triage & IOCs (new)

**Objective.** Controlled static/dynamic triage, **IOC** extraction, and minimal report.
**Highlights.** `strings` flow → regex → IOC table; hash discipline; benign local sandbox (no external network); action logging; boundaries/ethics.
**CPP-R (examples).** `strings` pipeline + **yara-lite** → IOC CSV with checksums.
**PAD (evidence).** Mini-report with hypotheses → findings → boundaries → next steps.

---

### Builder Track (ethical) integrated into Phase 1

**BL-F1-01:** Benign Loader/CLI with logging and errors (0B01) — **CPP-R**
**BL-F1-02:** Encrypted configuration (benign data) + validation (1B01) — **CPP-R**
**BL-F1-03:** Minimal telemetry + local summary (2B01–3B01) — **CPP-R**
**BL-F1-04:** **LD\_PRELOAD** hook “counter/echo” (4B01) — **CPP-R** with **YARA-lite detection**

> Each **BT** item includes “companion detection” where applicable (e.g., YARA-lite/Sigma on your own artifacts) and reproducible evidence.

---

### Outcomes and success criteria

* Builds with no warnings (`-Wall -Wextra -Werror`); clean sanitizers in expected scenarios.
* Tested utilities (**hexdump**, parsers, hooks) with **reproducible evidence**.
* **CPP-R/PAD** completed per block; **bimonthly MJT** passed.
* Mini **PE triage** report with IOC table and hash discipline.

---

### Evaluation (CPP-R, PAD & MJT)

* **CPP-R.** Reproducible closure per **Composite Stack** with clear objectives, verifiable steps, and artifacts (`run.log`, `manifest`, `checksums`, screenshots).
* **PAD.** Block-integrated mission with report and verification on a clean VM.
* **MJT.** Realistic triage case with minimal context; evidence and mini-report.
* Each block **closes with CPP-R + PAD** and minimum evidence; **MJT** per bimonthly schedule.

---

### Ethics and scope

**Lab-only**, **benign** payloads, **NAT-only** network, zero third parties. Encrypted briefs where applicable. See `docs/Opsec_Legal.md`. **Signed tags** per block; without evidence, it does not exist.
