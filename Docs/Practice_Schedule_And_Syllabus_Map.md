
# Practice Schedule And Syllabus Map (PBR, PAD, MJT)

**Coverage:** 2025-08-14 → 2030-02-03
**Cadence (base):** 5 h/day (Mon–Sat). **F0** runs in parallel (3–4 sessions/week, 60–75 min).
**Method:** **PAD** (guided drill) → **PBR** (1-click reproducible lab) → **MJT** (mock job with scoring criteria).
**Artifacts:** `bash script/pbr_run.sh --all` → `evidence/` (logs, checksums, screenshots) → `manifest.json`.

> Style note: **Headings** use Capitalized\_Snake\_Case; **paths** remain lowercase (`script/`, `evidence/`, `manifest.json`).

---

### Conventions And IDs

* **ID form:** `<Type>-<Level>-<Phase>-<Block>-<Index>`

  * Type: `PAD`, `PBR-T`, `PBR-B`, `MJT-T`, `MJT-B`, `MJT-Post`
  * Level: `F0/F1/...`
  * Block: `0B01`, `F4-B1`, `8A`, `9B`, etc.
* **Due cadence (per block):**

  * **PAD** during weeks 1–2 of the block.
  * **PBR-T** closes each topic (weeks 2–3).
  * **MJT-T** immediately after the PBR-T (same or following week).
  * **PBR-B** in the final week of the block.
  * **MJT-B** and **MJT-Post** within 48 hours after the PBR-B.
* **Technical paths:** `script/pbr_run.sh`, `evidence/`, `manifest.json`.
* **Ethics:** lab-only, benign artifacts, no third parties.

---

### Phase 0 (Parallel Micro Track) — 2025-08-21 → \~2025-10-05 (Q1)

**Stacks/Topics:** conversions, two’s complement, modular ops/inverses (Fermat), primes/gcd/lcm, Hill-lite.

| Week | Practice ID               | Scope                                     | Outcome (Artifacts)                              |
| ---: | ------------------------- | ----------------------------------------- | ------------------------------------------------ |
|   W1 | PAD-F0-Prep               | Conversions (bin/dec/hex)                 | Cmd list + checks; validation notes              |
|   W2 | PBR-T-F0-B0M1-01          | Numbers & Bases                           | 1-click; `run.log`, `manifest.json`, checksums   |
|   W3 | PAD-F0-Mod                | Modular ops + inverses                    | Validated results                                |
|   W4 | PBR-T-F0-B0M2-01          | Modular Arithmetic                        | Reproducible evidence                            |
|   W5 | PAD-F0-Hill\_Lite         | Minimal matrices + block                  | Checks                                           |
|   W6 | PBR-T-F0-B0M3-01          | Hill-lite encoder/decoder                 | `hillcipher.py` + tests + manifest               |
|   W6 | PBR-B-F0-Closure          | F0 consolidation                          | Full evidence package                            |
|   W6 | MJT-B-F0-Cryptology\_Lite | Integrated mission (binarize→mod→encrypt) | `mission.asc`, mini-report, **MJT-Post** in 48 h |

---

### Quarter C1 — 2025-08 → 2025-11 (F1 start + F0 parallel)

**Blocks:** `0B01 Linux/CLI/Bash`, `1B01 Toolchain/Debugging`, start of `2B01 Systems_C_I`.

### F1 0B01 — Linux CLI Bash And Ecosystem

| Week | Practice ID          | Topic Focus                              | Outcome               |
| ---: | -------------------- | ---------------------------------------- | --------------------- |
|   W1 | PAD-F1-0B01-CLI-01   | FHS, permissions, pipes (`grep/sed/awk`) | Commands + validation |
|   W2 | PBR-T-F1-0B01-01     | Backups/rsync + processes/signals        | 1-click + evidence    |
|   W3 | MJT-T-F1-0B01-01     | Log triage (CLI only)                    | Mini-report + hashes  |
|   W4 | PBR-B-F1-0B01        | Reproducible CLI tooling                 | Full package          |
|   W4 | MJT-B-F1-0B01 + Post | Mini playbook (no network)               | Report + Post-fix     |

### F1 1B01 — Toolchain Debugging VCS

| Week | Practice ID            | Topic Focus                       | Outcome            |
| ---: | ---------------------- | --------------------------------- | ------------------ |
|   W5 | PAD-F1-1B01-Git\_Build | Git/PRs/hooks, Make/CMake         | Validation         |
|   W6 | PBR-T-F1-1B01-01       | Binutils + flags + sanitizers     | 1-click + manifest |
|   W7 | MJT-T-F1-1B01-01       | Fix a build and reproduce failure | Mini-report        |
|   W8 | PBR-B-F1-1B01          | Build + test harness              | Complete evidence  |
|   W8 | MJT-B-F1-1B01 + Post   | “Broken Makefile” triage          | Report + Post      |

> If you start `2B01` in C1 (last 1–2 weeks), create **PAD-F1-2B01-Pointers** and leave the PBR-T for C2.

---

### Quarter C2 — 2025-12 → 2026-02 (F1 closure)

**Blocks:** `2B01 Systems_C_I (start/wrap)`, `4B01 x86_64/ABI/ASM`, `5B01 Linking/Loading`.

### F1 2B01 — Systems C\I

| Week | Practice ID          | Topic Focus                      | Outcome            |
| ---: | -------------------- | -------------------------------- | ------------------ |
|   W1 | PAD-F1-2B01-Pointers | Pointers/ownership, safe strings | Validation         |
|   W2 | PBR-T-F1-2B01-01     | I/O stdio vs syscalls            | 1-click + evidence |
|   W3 | MJT-T-F1-2B01-01     | I/O bug triage                   | Mini-report        |
|   W4 | PBR-B-F1-2B01        | Reproducible C mini-suite        | Full package       |

### F1 4B01 — x86 64 ABI ASM

| Week | Practice ID      | Topic Focus                       | Outcome     |
| ---: | ---------------- | --------------------------------- | ----------- |
|   W5 | PAD-F1-4B01-ABI  | SysV ABI, stack frames, calls     | Validation  |
|   W6 | PBR-T-F1-4B01-01 | C↔asm, syscalls, micro-benchmarks | 1-click     |
|   W7 | MJT-T-F1-4B01-01 | Crash triage in asm               | Mini-report |

### F1 5B01 — Linking Loading (ELF, PLT, GOT, LD, PRELOAD)

| Week | Practice ID          | Topic Focus                       | Outcome       |
| ---: | -------------------- | --------------------------------- | ------------- |
|   W8 | PAD-F1-5B01-ELF      | ELF headers/relocs/symbols        | Validation    |
|   W9 | PBR-T-F1-5B01-01     | `LD_PRELOAD` hook + rpath/runpath | 1-click       |
|   W9 | MJT-T-F1-5B01-01     | Hook vs target binary (benign)    | Mini-report   |
|  W10 | PBR-B-F1-5B01        | Reproducible F1 closure           | Evidence      |
|  W10 | MJT-B-F1-5B01 + Post | “Loader vs telemetry” case        | Report + Post |

---

###  Quarter C3 — 2026-04 → 2026-07 (F2 complete)

**Blocks:** `0B04 Applied Reversing I`, `1B04 Deep PE & Loaders`, `2B04 Userland Paths`, `EX0B01 Express`, `3B02 Bridge`.

### F2 0B04 — Applied Reversing\_I

| Week | Practice ID        | Focus                                         |
| ---: | ------------------ | --------------------------------------------- |
|   W1 | PAD-F2-0B04-Static | Strings/CFG/calling conventions               |
|   W2 | PBR-T-F2-0B04-01   | Dynamic (x64dbg/WinDbg) + basic anti-analysis |
|   W3 | MJT-T-F2-0B04-01   | Benign CrackMe with lab limits                |

### F2 1B04 — Deep PE And In Memory Loaders

| Week | Practice ID      | Focus                           |
| ---: | ---------------- | ------------------------------- |
|   W4 | PAD-F2-1B04-PE   | PE headers/relocs/TLS           |
|   W5 | PBR-T-F2-1B04-01 | Local loader (benign shellcode) |
|   W6 | MJT-T-F2-1B04-01 | Minimal manual map (validation) |

### F2 2B04 — Userland Paths And Mitigations

| Week | Practice ID       | Focus                          |
| ---: | ----------------- | ------------------------------ |
|   W7 | PAD-F2-2B04-Paths | CRT+LoadLibrary, APC           |
|   W8 | PBR-T-F2-2B04-01  | Hollowing (lab) + DEP/ASLR/CFG |
|   W8 | MJT-T-F2-2B04-01  | Benign injection triage        |

### F2 Closure

| Week | Practice ID         | Focus                              | Outcome       |
| ---: | ------------------- | ---------------------------------- | ------------- |
|   W9 | PBR-B-F2-Closure    | Integration 0B04–2B04              | Full package  |
|   W9 | MJT-B-F2 + MJT-Post | Realistic case with limits, no net | Report + Post |
|  W10 | PBR-T-F2-EX0B01     | Support harness and tooling        | Evidence      |
|  W10 | PBR-T-F2-3B02       | Bridge to F3                       | Evidence      |

---

### Quarter C4 — 2026-08 → 2026-11 (F3 start until 2026-09-14)

**Blocks:** `0B04 Process/Memory Internals`, `1B03 Userland Exploit I`, `EX0B01 Bug Bounty Prep`.

| Week | Practice ID            | Focus                                   |
| ---: | ---------------------- | --------------------------------------- |
|   W1 | PAD-F3-0B04-Internals  | PEB/TEB, region-map, heaps              |
|   W2 | PBR-T-F3-0B04-01       | Methodology + evidence                  |
|   W3 | PAD-F3-1B03-ROP\_Basic | Gadget hunting / mitigations            |
|   W4 | PBR-T-F3-1B03-01       | Educational exploit (stack + basic ROP) |
|   W4 | MJT-T-F3-1B03-01       | Crash triage with minimal ROP           |

> **TOCD Pause:** 2026-09-14 → 2027-08-02 (BackLogs 6–8 h/week).

---

### Quarters C5–C6 — 2026-12 → 2027-07 (Pause · BackLogs)

* **BackLog-PAD** short refreshers from F2/F3.
* No formal **PBR/PAD/MJT** (avoid large deliverables).

---

### Quarter C7 — 2027-08 → 2027-11 (F3 continuation)

**Block:** `0B04 Advanced Windows Internals (MM/OBJ/ETW/APC)`

| Week | Practice ID          | Focus                     |
| ---: | -------------------- | ------------------------- |
|   W1 | PAD-F3-0B04-ETW\_OBJ | VADs, handle-map, APC     |
|   W2 | PBR-T-F3-0B04-02     | Region/handle-map tooling |
|   W3 | MJT-T-F3-0B04-02     | Triage with minimal ETW   |

---

### Quarter C8 — 2027-12 → 2028-03 (F3 continuation)

**Blocks:** `1B03 Userland Exploit II`, `2B03 Heap Exploitation`.

| Week | Practice ID          | Focus                  |
| ---: | -------------------- | ---------------------- |
|   W1 | PAD-F3-1B03-InfoLeak | Info-leak + ROP/JOP    |
|   W2 | PBR-T-F3-1B03-02     | Win/Linux exploitation |
|   W3 | MJT-T-F3-1B03-02     | Leak-based chain case  |
|   W4 | PAD-F3-2B03-Heap     | tcache/fastbin vs LFH  |
|   W5 | PBR-T-F3-2B03-01     | Heap PoCs              |
|   W6 | MJT-T-F3-2B03-01     | Heap triage            |

---

### Quarter C9 — 2028-04 → 2028-07 (F3 closure)

**Blocks:** `3B03 Kernel (Win) fundamentals`, `4B02 F3-CAP`.

| Week | Practice ID                | Focus                                   |
| ---: | -------------------------- | --------------------------------------- |
|   W1 | PAD-F3-3B03-Kernel\_Primer | KD/IOCTL/IRP                            |
|   W2 | PBR-T-F3-3B03-01           | RW primitive (vulnerable driver, in VM) |
|   W3 | MJT-T-F3-3B03-01           | Local privilege escalation triage       |
|   W4 | PBR-B-F3-CAP               | Userland→SYSTEM chain                   |
|   W4 | MJT-B-F3 + Post            | F3 final evaluation                     |

---

### Quarter C10 — 2028-08 → 2028-11 (F4 start)

**Modules/Blocks:** `8A Initial Access`, `8B Minimal Blue`, `F4-B1 Evasion I`.

| Week | Practice ID              | Focus                             |
| ---: | ------------------------ | --------------------------------- |
|   W1 | PAD-F4-8A-Delivery       | Maldocs, LNK/HTA/JS, LOLBins/WMI  |
|   W2 | PBR-T-F4-8A-01           | Two reproducible delivery chains  |
|   W3 | MJT-T-F4-8A-01           | Access playbook with limits       |
|   W4 | PAD-F4-8B-Blue\_Baseline | Sysmon/ETW, YARA/Sigma, KQL       |
|   W5 | PBR-T-F4-8B-01           | Telemetry baseline                |
|   W6 | PAD-F4-B1-Evasion        | Anti-analysis, dynamic resolution |
|   W7 | PBR-T-F4-B1-01           | Basic evasive loader              |
|   W8 | MJT-T-F4-B1-01           | Detection triage vs baseline      |

---

### Quarter C11 — 2028-12 → 2029-03 (F4 continuation)

**Blocks:** `F4-B2 Evasion II`, `9B Crypto/Packer v2`, `F4-B3 Persistence`.

| Week | Practice ID           | Focus                                        |
| ---: | --------------------- | -------------------------------------------- |
|   W1 | PAD-F4-B2-Advanced    | Early-bird/APC, thread-less, module-stomping |
|   W2 | PBR-T-F4-B2-01        | Advanced evasion                             |
|   W3 | MJT-T-F4-B2-01        | Evasive case + blue checks                   |
|   W4 | PAD-F4-9B-Crypto      | AEAD, rotation, light mutation               |
|   W5 | PBR-T-F4-9B-01        | Integrable packer v2                         |
|   W6 | MJT-T-F4-9B-01        | Packed triage                                |
|   W7 | PAD-F4-B3-Persistence | Win/Linux/macOS                              |
|   W8 | PBR-T-F4-B3-01        | Measured persistence                         |
|   W8 | MJT-T-F4-B3-01        | Survival validation                          |

---

### Quarter C12 — 2029-04 → 2029-07 (F4 closure)

**Blocks:** `F4-B4 C2 & Traffic`, `F4-B5 Covert Ops`, `F4-CAP`.

| Week | Practice ID           | Focus                            |
| ---: | --------------------- | -------------------------------- |
|   W1 | PAD-F4-B4-C2\_Profile | Realistic profile (72 h)         |
|   W2 | PBR-T-F4-B4-01        | Measured C2 + logs               |
|   W3 | MJT-T-F4-B4-01        | Network detection triage         |
|   W4 | PBR-B-F4-B5           | Covert Ops (5 tasks)             |
|   W4 | MJT-B-F4-B5 + Post    | Operational evaluation           |
|   W5 | PBR-B-F4-CAP          | Integrated operation (96 h, lab) |

---

### Quarter C13 — 2029-08 → 2029-11 (F5 start)

**Block:** `B1 Linux Kernel`.

| Week | Practice ID           | Focus                          |
| ---: | --------------------- | ------------------------------ |
|   W1 | PAD-F5-B1-LKM\_Primer | Kbuild/Kconfig, didactic hooks |
|   W2 | PBR-T-F5-B1-01        | Stable LKM + metrics           |
|   W3 | MJT-T-F5-B1-01        | Module triage                  |

---

### Quarter C14 — 2029-12 → 2030-03 (F5 closure)

**Blocks:** `B2 Windows Kernel`, `B3 Rootkit-style PoCs`, `B4 UEFI/OVMF`, `B5 Bootflow`, `F5-CAP`.

| Week | Practice ID            | Focus                                        |
| ---: | ---------------------- | -------------------------------------------- |
|   W1 | PAD-F5-B2-Drivers      | WDM/WDF, IOCTL/IRP, callbacks                |
|   W2 | PBR-T-F5-B2-01         | Benign driver                                |
|   W3 | MJT-T-F5-B2-01         | IOCTL scenario                               |
|   W4 | PAD-F5-B3-Rootkit\_Lab | Reversible/detectable PoCs                   |
|   W5 | PBR-T-F5-B3-01         | PoC suite with metrics                       |
|   W6 | PAD-F5-B4-UEFI         | DXE (benign), signing and build              |
|   W7 | PBR-T-F5-B4-01         | Reproducible OVMF DXE                        |
|   W8 | PAD-F5-B5-Bootflow     | Secure Boot on/off comparison                |
|   W9 | PBR-T-F5-B5-01         | Bootflow evidence                            |
|  W10 | PBR-B-F5-CAP           | Kernel+Firmware chain with technical defense |
|  W10 | MJT-B-F5 + MJT-Post    | Final evaluation                             |

---

### Minimal Requirements Per Practice

* **PAD:** guided steps, immediate verification; record key commands and outputs.
* **PBR:** `script/pbr_run.sh` 1-click; `evidence/` with `run.log`, `checksums.txt`, `manifest.json`; short README.
* **MJT:** mini-report (10–12 lines), explicit limits, minimal tooling if applicable; **MJT-Post** to adjust the PBR if something failed.

---

### KPIs And Quality Gates

* **PAD:** accuracy rate and average time per exercise.
* **PBR:** 1-click success on a clean VM; coherent evidence; explicit dependencies.
* **MJT:** triage time; number of confirmed hypotheses; report clarity.
* **Blue Validation (F4+):** signal reduction vs baseline (8B).
