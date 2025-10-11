# Phase 1 - Eniac (Fundamentals with a Malware Analysis Lens)

- **Start:** 1-Feb-2026
- **End:** 31-May-2026
- **Duration:** 4 months (17 weeks)
- **Target role:** Reverse Engineer (Entry) with a Malware Analysis orientation
- **Security:** Lab-only, benign artifacts, NAT network, encrypted briefs (GPG), reproducible evidence

### Scope

Phase 1 builds deep understanding of **Systems-C**, **x86_64/ABI**, **ELF/PLT/GOT**, and **PE Fundamentals**, culminating in a controlled introduction to **Malware Analysis**. You will learn to reason about memory, calling conventions, linking/loading, and static/dynamic triage under **OPSEC**.

### Methodology

* **GDP (Guided Drills Protocol):** short, topic-verified drills.
* **CPP-R (Reproducible Proof of Concept):** reproducible “one-command” closure per stack with `cpp/run.sh`, `manifest.json`, and `cpp/evidence/`.
* **PAD (Practical Aptitude Drill):** **block**-integrated mission with report and verification.
* **Encrypted Mission Protocol:** briefs/resources travel signed + encrypted when applicable.
* **Repo/OPSEC:** VM snapshots, benign datasets, no third-party data.

### Phase-level outcomes

* **6–8 CPP-Rs** with evidence packages and verified **idempotency**.
* **2 PADs** (Systems-C block + MA block).
* 1 simple **hexdump/patcher** with tests.
* 1 **LD_PRELOAD hooking demo** in userland (documented and safe).
* 1 **mini PE triage report** (hashes, imports, sections, IOCs) on a benign sample.
* **Lab logbook**, **OPSEC** checklist, and **signed tags** per block.

### How the phase is organized

**Naming.** Blocks with codes like `2B01` (first digit = block index). A block can span multiple **stacks** (Composite Stack).

### 2B01–3B01 — Systems-C I (two stacks)

> **Objective.** Memory and pointers, low-level I/O, contracts, and safe parsing.

**Highlights.** pointers/`const`/`restrict`, structs/bitfields, `malloc/free`, `errno` and contracts, `stdio` vs syscalls, buffers, `mmap`; safe binary parsing; basic sockets; light testing and fuzzing.

- **CPP-R (examples).** Custom **hexdump**; mini **safe-strings** + tests; mini viewer via `mmap`.
- **PAD (evidence).** Function specifications; threats and mitigations.
-**BT:** **Minimal telemetry** (structured logs) and **local summary** for utilities.

---

### 4B01 — x86_64 Architecture & ABI; Practical Assembly

> **Objective.** Calling conventions, stack, syscalls, C↔asm.

**Highlights.** SysV x86_64 CC; prologue/epilogue; callee-saved; syscalls and `errno`; `inline asm`; passing `struct`; conceptual contrast Windows x64 vs SysV.

- **CPP-R (examples).** `memcmp/memset` in asm with cross-tests; syscall wrappers without libc.
- **PAD (evidence).** Stack diagrams; comparative micro-bench.
- **BT:** **LD_PRELOAD hook** “counter/echo” (benign) with evidence package.

---

### 5B01 — Linking, Loading & Formats (ELF, PLT/GOT, LD_PRELOAD)

> **Objective.** Symbol resolution and controlled interception in userland.

**Highlights.** ELF headers/sections/segments/relocations/symbols; static vs dynamic; PIC/PIE; PLT/GOT & lazy binding; `ldd`, `patchelf`, `objdump/readelf`; visibility; **LD_PRELOAD**; PE vs ELF contrast.

- **CPP-R (examples).** Minimal ELF parser; hook for `open/fopen`; `rpath/runpath` control with `patchelf`.
- **PAD (evidence).** Linking report; symbol tables **before/after** the hook.

---

### 6B01 — Windows & PE Fundamentals for Analysts

> **Objective.** Understand **PE** at analyst level: headers, sections, imports/exports, timestamps, hashes/signatures.

**Highlights.** PE layout, `pefile/sigcheck/dumpbin`, imports/exports, resources, timestamp sanity, hashsets (SHA-256), Authenticode signatures (read-only).

- **CPP-R (examples).** **Benign PE triage**: hash + imports + sections → short reproducible report.
- **PAD (evidence).** Section table → characteristics; import tree with notes.

---

### 7B01 — Intro to Malware Analysis: Safe Triage & IOCs

> **Objective.** Controlled static/dynamic triage, **IOC** extraction, and minimal reporting.

**Highlights.** `strings` → regex → IOC table flow; hash discipline; benign local sandbox (no external network); action logging; limits/ethics; **YARA-lite** (static).

- **CPP-R (examples).** `strings` pipeline + **YARA-lite** → IOC CSV with checksums.
- **PAD (evidence).** Mini-report with hypotheses → findings → limits → next steps.

---

### Builder Track (ethical) integrated in Phase 1

**BL-F1-01:** Minimal telemetry + local summary (2B01–3B01) — **CPP-R**
**BL-F1-02:** **LD_PRELOAD** hook “counter/echo” (4B01) — **CPP-R** with **YARA-lite detection**

> Each **BT** item includes a “companion detection” where applicable (e.g., YARA-lite/Sigma over own artifacts) and reproducible evidence.

### Learning (skills and mindset)

* **Systems-C:** memory ownership, safe I/O, contracts, and testing.
* **x86_64** calling conventions and practical asm.
* **ELF/linking** internals and hooks via **LD_PRELOAD**.
* **PE fundamentals** and initial triage with evidence and **OPSEC**.
* Basic **YARA** and reproducible IOC extraction.

### Outcomes and success criteria

* Builds with no warnings (`-Wall -Wextra -Werror`); clean sanitizers under expected scenarios.
* Utilities tested (**hexdump**, parsers, hooks) with **reproducible evidence**.
* **CPP-R/PAD** completed per block.
* Mini **PE triage** report with IOC table and hash discipline.
* **≥10 YARA rules** functional with metrics.

### Assessment (CPP-R, PAD)

* **CPP-R.** Reproducible closure per **stack** with clear objectives, verifiable steps, and artifacts (`run.log`, `manifest.json`, `checksums`, screenshots).
* **PAD.** Block-integrated mission with report and verification on a clean VM.
* Each block **closes with CPP-R + PAD** and minimum evidence.

### Phase 1 KPIs

* **6–8 CPP-Rs** (1.5–2/month)
* **2 PADs** (1/block: Systems-C + MA)
* **≥10 YARA rules** functional
* **0 days without hands-on**

### Ethics and scope

**Lab-only**, **benign** payloads, **NAT-only** network, zero third parties. Briefs encrypted where applicable. See `docs/Opsec_Legal.md`. **Signed tags** per block; evidence or it doesn’t exist.

