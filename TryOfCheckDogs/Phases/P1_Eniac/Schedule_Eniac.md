# Phase 1 - ENIAC

**Syllabus & Schedule** (Quarters · Blocks · Stacks)

- **Coverage:** 1-Feb-2026 → 31-May-2026
- **Cadence:** ~30 h/week (5 h/day, Mon–Sat)

**Methodology:** **CPP-R** (reproducible closures) + **PAD** (Practical Aptitude Drill: block-integrated mission) + **GDP** (guided drills) 
- **Lab-only** (OPSEC/Legal)

**Global outcomes (F1):** 6–8 CPP-Rs + PADs, 1 simple hexdump/patcher, 1 LD_PRELOAD demo, 1 mini PE triage report, 1 YARA-IOCs pipeline, lab logbook and minimal OPSEC checklist.

**Builder Track (F1):** minimal telemetry and local summary for utilities, LD_PRELOAD hook “counter/echo” (all as CPP-R with evidence; companion detection where applicable).


### Quarter Map (high level)

* **Q1 (1-Feb-2026 → 28-Mar-2026):** 2B01–3B01 Systems-C I (8 weeks)

* **Q2 (29-Mar-2026 → 18-Apr-2026):** 4B01 x86_64/ABI/ASM (3 weeks)

* **Q2 (19-Apr-2026 → 9-May-2026):** 5B01 Linking/ELF/PLT/GOT (3 weeks)

* **Q2 (10-May-2026 → 23-May-2026):** 6B01 Windows & PE Fundamentals (2 weeks)

* **Q2 (24-May-2026 → 31-May-2026):** 7B01 Intro to Malware Analysis (1 week)

* **Express Module (parallel):** F1-Express — Minimal Lab OPSEC — check-ins distributed at the end of each block.

---

### Q1 — Detailed Schedule

### 2B01–3B01 Systems-C I — Part A (4 weeks · ~120 total hours)

> **Objective:** Pointers and memory, safe I/O, mmap, basics of binary parsing.
> **BT:** Minimal telemetry (structured logs) and local summary for utilities (CPP-R).

| Stack                 | Thematic cluster (examples)                                           | Est. hours | Key tools               | Assignment (CPP-R) · Due                                                               |
| --------------------- | --------------------------------------------------------------------- | ---------: | ----------------------- | -------------------------------------------------------------------------------------- |
| Pointers & Layout     | pointers, const/restrict, structs/unions/bitfields, alignment/padding |       24 h | gdb, valgrind, objdump  | —                                                                                      |
| Dynamic Memory        | malloc/calloc/realloc/free, ownership, simple arenas                  |       24 h | asan, usan, mcheck      | —                                                                                      |
| I/O & mmap            | stdio vs syscalls (open/read/write), buffers, mmap                    |       30 h | strace, ltrace, hexdump | **CPP-R-2B01-1:** own hexdump (offset + ASCII) · **Sun 1-Mar-2026**                    |
| Binary Parsing (safe) | headers, checks, error contracts                                      |       24 h | readelf, nm, strings    | **CPP-R-2B01-2:** mini binary viewer (header + sections via mmap) · **Sun 8-Mar-2026** |
| Error Handling        | errno, contracts, preconditions                                       |       18 h | perror, strerror        | —                                                                                      |

- **PAD (Exam) — PAD-2B01-A**
- **Date:** 10-Mar-2026 (Tuesday)
- **Deliverable:** specifications + test matrix + threat report for your utilities.

---

### 3B01 Systems-C I — Part B (4 weeks · ~120 total hours)

> **Objective:** Safe string subset, sockets intro, light tests & fuzzing.

| Stack                 | Thematic cluster (examples)               | Est. hours | Key tools             | Assignment (CPP-R) · Due                                                      |
| --------------------- | ----------------------------------------- | ---------: | --------------------- | ----------------------------------------------------------------------------- |
| Safe Strings (subset) | x_strlcpy/strnlen_s-style + tests         |       30 h | cppcheck, sanitizers  | **CPP-R-3B01-1:** mini safe-strings lib + >80% coverage · **Sun 15-Mar-2026** |
| Sockets Intro         | TCP/UDP; blocking vs non-blocking         |       24 h | netcat, ss, tcpdump   | **CPP-R-3B01-2:** minimal TCP client (timeouts OK) · **Sun 22-Mar-2026**      |
| Testing & Fuzzing     | unit tests; honggfuzz/AFL (20-min runs)   |       30 h | honggfuzz, AFL, gcov  | **CPP-R-3B01-3:** parser fuzz pass (no crashes) · **Sun 29-Mar-2026**         |
| Security Pitfalls     | bounds, off-by-one, fmt, UAF, double-free |       24 h | asan, ubsan, valgrind | —                                                                             |
| Docs & Contracts      | function specs, contracts, cases          |       12 h | markdown, doxygen     | —                                                                             |

- **PAD (Exam) — PAD-3B01**
- **Date:** 31-Mar-2026 (Tuesday)
- **Deliverable:** consolidated documentation + tests/evidence package.

---

### Q2 — Detailed Schedule

### 4B01 x86_64 Architecture & ABI; Practical Assembly (3 weeks · ~90 total hours)

> **Objective:** Calls, stack discipline, syscalls, C↔asm integration, ABI contrasts.
> **BT:** LD_PRELOAD hook “counter/echo” (benign) with evidence package (CPP-R).

| Stack                      | Thematic cluster (examples)                | Est. hours | Key tools            | Assignment (CPP-R) · Due                                                            |
| -------------------------- | ------------------------------------------ | ---------: | -------------------- | ----------------------------------------------------------------------------------- |
| SysV ABI & Stack           | registers, prologue/epilogue, nested calls |       18 h | gdb, objdump -d      | —                                                                                   |
| Syscalls & errno           | numbers, syscall, errors/errno             |       18 h | strace, ltrace       | **CPP-R-4B01-1:** syscall wrappers (write/getpid) without libc · **Sun 5-Apr-2026** |
| C ↔ asm Integration        | inline asm; structs by value               |       24 h | gcc, clang, nasm     | **CPP-R-4B01-2:** mixed C+asm passing structs · **Sun 12-Apr-2026**                 |
| Mem Routines in asm        | memset/memcmp impl + cross-tests           |       24 h | perf, time, valgrind | **CPP-R-4B01-3:** asm vs C benchmarks · **Sun 19-Apr-2026**                         |
| ABI Contrast (Win vs SysV) | conceptual differences                     |        6 h | docs, comparisons    | —                                                                                   |

- **PAD (Exam) — PAD-4B01**
- **Date:** 21-Apr-2026 (Tuesday)
- **Deliverable:** ABI notes (stack diagrams) + comparative benches.

---

### 5B01 Linking, Loading & Formats (ELF, PLT/GOT, LD_PRELOAD) (3 weeks · ~90 total hours)

> **Objective:** Symbol resolution and controlled interception in userland.

| Stack                  | Thematic cluster (examples)                    | Est. hours | Key tools            | Assignment (CPP-R) · Due                                                        |
| ---------------------- | ---------------------------------------------- | ---------: | -------------------- | ------------------------------------------------------------------------------- |
| ELF Basics             | headers, sections vs segments, relocs, symbols |       24 h | readelf, objdump, nm | **CPP-R-5B01-1:** minimal ELF parser (sections + symbols) · **Sun 26-Apr-2026** |
| Linking (PIC/PIE)      | static/dynamic, PLT/GOT, lazy binding          |       18 h | ldd, ld.so, strace   | —                                                                               |
| Shared Libs            | build .so, symbol visibility                   |       18 h | gcc -fPIC, patchelf  | **CPP-R-5B01-2:** LD_PRELOAD hook for open/fopen · **Sun 3-May-2026**           |
| Tooling                | ldd, patchelf, objdump/readelf                 |       18 h | patchelf, readelf -r | **CPP-R-5B01-3:** manual rpath/runpath PoC · **Wed 20-May-2026**                |
| PE vs ELF (high level) | future preparation                             |       12 h | docs, comparisons    | —                                                                               |

- **PAD (Exam) — PAD-5B01**
- **Date:** 22-May-2026 (Tuesday)
- **Deliverable:** linking architecture report + symbol tables before/after hooking with evidence.

---

### 6B01 Windows & PE Fundamentals for Analysts (2 weeks · ~60 total hours)

> **Objective:** PE layout, sections, imports/exports, timestamps, hashes/signatures; reproducible PE triage.

| Stack                      | Thematic cluster (examples)                       | Est. hours | Key tools                 | Assignment (CPP-R) · Due                                                            |
| -------------------------- | ------------------------------------------------- | ---------: | ------------------------- | ----------------------------------------------------------------------------------- |
| PE Layout & Hashing        | DOS/NT headers, sections, time-date stamp, hashes |       18 h | pefile, dumpbin, xxd      | **CPP-R-6B01-1:** reproducible PE triage (hashes + sections) · **Sun 24-May-2026**  |
| Imports/Exports & Metadata | IAT/EAT, RVA/offsets, signatures                  |       18 h | pefile, sigcheck, dumpbin | **CPP-R-6B01-2:** extraction of imports/exports with evidence · **Sun 31-May-2026** |
| Toolchain (Win)            | dumpbin/llvm-objdump/pelib (benign)               |       12 h | llvm-objdump, PE-bear     | —                                                                                   |
| Reporting & Ethics         | report format, limits, benign labeling            |       12 h | markdown, templates       | —                                                                                   |

- **PAD (Exam) — PAD-6B01**
- **Date:** 2-Jun-2026 (Friday, adjusted post-31-May)
- **Deliverable:** mini PE triage report (hashes, sections, imports, IOCs) with evidence.

---

### 7B01 Intro to Malware Analysis: Safe Triage & IOCs (1 week · ~30 total hours)

> **Objective:** Controlled static/dynamic triage, IOC extraction, and minimal reporting.

| Stack               | Thematic cluster (examples)         | Est. hours | Key tools               | Assignment (CPP-R) · Due                                                        |
| ------------------- | ----------------------------------- | ---------: | ----------------------- | ------------------------------------------------------------------------------- |
| Strings/Regex → IOC | extraction and normalization to CSV |       12 h | strings, grep -E, regex | **CPP-R-7B01-1:** strings→IOC pipeline (reproducible CSV) · **Wed 27-May-2026** |
| YARA-lite (static)  | basic rules, local validation       |       12 h | yara, yarascan          | **CPP-R-7B01-2:** YARA-lite set with verification · **Wed 3-Jun-2026**          |
| Dynamic Logging     | benign harness, controlled traces   |        6 h | strace, ltrace, custom  | —                                                                               |

* **PAD (Exam) — PAD-7B01**
* **Date:** 5-Jun-2026 (Friday)
* **Deliverable:** integrated mission (IOC + YARA-lite + logging) with evidence.

---

### Grading & Milestones (Phase 1)

* **CPP-R:** weekly closures, typically on Sundays (see tables above).

* **PADs (Exams):** at the end of each block (dates above, adjusted).

* **Phase 1 Final Sign-off:** **Fri 5-Jun-2026** — all CPP-R/PAD complete, reproducible evidence, OPSEC checklist signed, one-command repro OK.

* **Rubric:** A/B/C/Redo per F1 specification (clean sanitizers, tests present, clear docs).

### Express Module (parallel)

**F1-Express — Minimal Lab OPSEC**

**Check-ins:** at the end of each block (0B01, 1B01, 5B01, 6B01, 7B01)

**Deliverable:** OPSEC checklist signed and applied to F1 repos (partial sign-off at each closure).

### KPIs per quarter (Phase 1)

* **CPP-Rs:** ≥1–2/month (6–8 total in Phase 1)
* **PADs:** ≥1/block (2 total PADs)
* **YARA rules:** ≥10 functional (from 7B01)
* **Transition to Phase 2:** 100% of blocks completed with CPP-R/PAD approved
