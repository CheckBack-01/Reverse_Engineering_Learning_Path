# Phase 2 — IBM 1401 (Applied Reversing & Userland Execution)

- **Start:** 1-Dec-2026
- **End:** 31-May-2027
- **Duration:** 6 months
- **Target role:** Reverse Engineer / Malware Analyst (applied, userland)
- **Security:** Lab-only, benign artifacts, NAT network, encrypted briefs (GPG), reproducible evidence

### Scope

Phase 2 consolidates **applied reversing** and the first **userland execution** paths. You will reason about real binaries (static/dynamic), **manually unpack** simple layers, and build **loaders** that execute **benign in-memory payloads** using classic injection techniques, analyzing their footprint and **modern mitigations**.

### Methodology

* **GDP (Guided Drills Protocol):** guided, topic-verified drills.
* **CPP-R (Reproducible Proof of Concept):** reproducible “one-command” closure per stack with `cpp/run.sh`, `manifest.json`, and `cpp/evidence/`.
* **PAD (Practical Aptitude Drill):** **block**-integrated mission with report and verification.
* **Encrypted Mission Protocol:** briefs/resources travel signed + encrypted where applicable.
* **Repo/OPSEC:** VM snapshots, benign datasets, no third-party data.

### Phase-level outcomes

* **6–8 CPP-Rs** with evidence packages and verified **idempotency**.
* **Reversing** report on a real binary with **reproducible unpack**.
* **PE parser** usable and small supporting tooling for analysis.
* Stable **userland loader** implementing ≥2 execution techniques (e.g., `CreateRemoteThread+LoadLibrary` and **APC queueing**).
* **Process hollowing PoC** in a controlled lab (reversible).
* Evidence package and documentation suitable for future work (bug bounty/university).
* **2 PADs** (Reversing block + Execution block).


### How the phase is organized

**Naming.** Blocks use codes like `0BYY` (`0B04`, `1B04`, `2B04`), where the first digit is the index (base 0) and `YY` indicates the number of stacks in the block.

### 0B04 — Applied Reversing I: methodology and basic unpacking

> **Objective.** Master a **static/dynamic** pipeline (Ghidra/IDA + x64dbg/WinDbg), detect trivial

anti-analysis, and perform a **manual 1-layer unpack** (UPX-like) with minimal **IAT** reconstruction.
**Key points.** Strings/signatures; CFG and calling conventions; dump & patch; basic relocs; **anti-debug/time checks** and simple bypass; **Packers 101** (OEP, rebuild IAT); light scripting (Python) for decoders/parsers.

- **CPP-R (examples).** Reversing report of a small sample with obfuscated strings; **manual unpack** with clean dump and functional IAT; **config/string decoder** (XOR/RC4-lite) with tests.

- **PAD (evidence).** Step-by-step method, screenshots, pre/post checksums, issues and mitigations; reproducibility via README/checklist.

- **BT:** **Benign local loader** and **test harness** (controlled logging) — **CPP-R**.

---

### 1B04 — Deep PE, Windows API & in-memory loaders

> **Objective.** Understand **PE in practice** (headers, sections, imports/exports, relocs, TLS) and
build **loaders** that execute benign in-memory payloads, introducing **manual mapping**.

**Key points.** DOS/NT headers; IAT/EAT; relocs; TLS callbacks; PE vs ELF contrast. Windows internals of process/thread/memory: `VirtualAlloc{Ex}`, `WriteProcessMemory`, `Create{Remote}Thread`, `VirtualProtect`. Minimal loader: allocate + copy + protect + controlled jump. **Manual mapping 
(intro):** load a DLL without `LoadLibrary` (partial import resolution, essential relocs). Inspection with Process Hacker, PE-bear, PE-sieve.

- **CPP-R (examples).** **PE parser** that prints headers/sections/imports with basic checks; **local loader** for benign shellcode with declared errors and cleanup; **manual map (intro)** of a small DLL with export execution.

- **PAD (evidence).** Loader design, memory layout diagrams, risk notes, and test harness.

- **BT:** **Usable PE parser** + **manual mapping (intro)** of a benign DLL (export executed) — **CPP-R**.

---

### 2B04 — Userland execution paths & mitigations

> **Objective.** Implement **2–3 classic** userland injection/execution techniques and understand the 
effects of **DEP/ASLR/CFG** and handle policies; prepare the ground for **evasion/obfuscation** and the **Initial Access** module in Phase 4.

**Key points.** `CreateRemoteThread + LoadLibrary`; **APC queueing** (incl. early-bird) and synchronization; **process hollowing (intro)** vs **module stomping**; **PPID spoofing** and `CreateProcess` options; light obfuscation (API resolution by hash, hidden strings); DEP/ASLR/CFG mitigations; detection surfaces; intro to **syscalls** for basic operations.

- **CPP-R (examples).** **Loader with CLI-selectable modes** (≥ CRT+LL and APC) and logging; **hollowing PoC** against a lab binary with safe reversion; **reproducible comparison** of traces/artifacts by technique under a common checklist.

- **PAD (evidence).** Mitigation analysis, detection surface notes, and improvement plan feeding F3 and modules 8A/8B.

- **BT:** **Reproducible per-technique comparison** (artifact matrix + logging) — **CPP-R**.

---

### Learning (skills and mindset)

* **Applied reversing** with a reproducible flow and basic **unpacking**.
* **Practical PE** and in-memory execution via loaders; **manual mapping (intro)**.
* Multiple **userland execution paths**, their footprint, and mitigation-aware design.
* Documentation that produces **reproducible evidence** useful for interviews and bounty.

### Outcomes and success criteria

* **Unpacked** binary with stable **IAT** and analyzable static profile.
* **Useful PE parser** and supporting tooling.
* **Stable loader** that executes a benign payload and supports ≥2 techniques.
* **Reproducible, reversible process hollowing PoC** in a VM.
* **Phase evaluation:**

  * **A:** clean unpack + useful parser + ≥2 techniques in loader + stable hollowing + clear **one-command** reproducibility.
  * **B:** ≥80% CPP-R/PAD; one unstable technique or incomplete parser.
  * **C:** ≥60% with partial reproducibility.
  * **Redo:** <60% or severe instability.

### Assessment (CPP-R, PAD)

* **CPP-R.** Reproducible closure per **stack** with explicit objectives, verifiable steps, and artifacts (`run.log`, `manifest.json`, `checksums`, screenshots).
* **PAD.** Block-integrated mission with report and verification on a clean VM.
* All blocks **close with CPP-R + PAD** and a minimal evidence package.

### Phase 2 KPIs

* **6–8 CPP-Rs** (1 per stack)
* **2 PADs** (1/block: Reversing + Execution)
* **1 functional loader** with ≥2 techniques
* **1 reproducible unpack** with IAT
* **0 days without hands-on**
 
### Ethics and scope

**Lab-only**, **benign** payloads, **NAT-only** network, zero third parties. Briefs encrypted where applicable. See `docs/Opsec_Legal.md`. **Signed tags** per block; evidence or it doesn’t exist.

