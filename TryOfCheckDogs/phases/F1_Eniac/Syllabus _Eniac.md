# Phase 1 — ENIAC (Fundamentals)

Syllabus & Schedule (Quarters · Blocks · Stacks)

**Coverage:** 2025-10-01 → 2026-06-30
**Cadence:** \~30 h/week (5 h/day, Mon–Sat)
**Methodology:** CPP-R (reproducible closures) + PAD (Practical Aptitude Drill: block-integrated mission) + GDP (guided drills) · Lab-only (OPSEC/Legal)
**Global outcomes (F1):** 8–12 CPP-R + PADs, 1 C system utility, simple hexdump/patcher, LD\_PRELOAD demo, mini PE-triage report, lab logbook, and a minimal OPSEC checklist.
**Builder Track (F1):** benign loader/CLI, encrypted configuration with validation, minimal telemetry, and LD\_PRELOAD hook (all as CPP-R with evidence; companion detection where applicable).

### Quarter Map (high level)

* **Q1 (2025-10-01 → 2025-12-31):** 0B01 Linux Fundamentals, 1B01 Toolchain & Debugging
* **Q2 (2026-01-01 → 2026-03-31):** 2B01 Systems C I (start), 3B01 Systems C I (wrap-up), 4B01 x86\_64/ABI/ASM, 5B01 Linking/ELF/PLT/GOT/LD\_PRELOAD
* **Q3 (2026-04-01 → 2026-06-30):** 6B01 Windows & PE Fundamentals (new), 7B01 Intro to Malware Analysis: Safe Triage & IOCs (new)
* **Express Module (parallel):** F1-Express — Minimal Lab OPSEC — distributed check-ins at the close of each block.

---

### Q1 — Detailed Schedule

### 0B01 Linux Fundamentals (6 weeks · \~180 total hours)

**Objective:** Fluency at the console; file/text pipelines; permissions; processes; basic networking; packaging; lab hygiene.
**· BT:** Benign loader/CLI with logging and error handling (CPP-R with evidence).

**Stacks & Topics (with hours and deliverables)**

| Stack                    | Thematic cluster (examples)                                  | Est. hours | Key tools                  | Assignment (CPP-R) · Due                                            |
| ------------------------ | ------------------------------------------------------------ | ---------: | -------------------------- | ------------------------------------------------------------------- |
| FHS & Permissions        | FHS, users/groups, chmod/chown/umask, ACLs                   |       24 h | coreutils, getfacl/setfacl | CPP-R-0B01-1: Collaborative ACLs · Sun 2025-10-12                   |
| Text Pipelines           | pipes, redirection, grep/sed/awk, regex, cut/sort/uniq/tr/wc |       30 h | GNU tools                  | CPP-R-0B01-2: logs → CSV pipeline · Sun 2025-10-19                  |
| File Management          | find/xargs, tar/gzip, rsync, rotations                       |       18 h | find, rsync                | CPP-R-0B01-3: incremental backup with verification · Sun 2025-10-26 |
| Processes & Signals      | ps/top/htop, kill, nice/renice, jobs/bg/fg, nohup            |       18 h | proc tools                 | Checkpoint quiz (theory) · Thu 2025-10-30                           |
| Basic Networking         | ip/route, ss, ping/traceroute, /etc/hosts, DNS               |       24 h | iproute2                   | Mini-lab: network quick-survey · Sun 2025-11-02                     |
| Packaging (Deb/Ubuntu)   | repos, apt/dpkg, version pinning                             |       12 h | apt/dpkg                   | —                                                                   |
| Lab Hygiene (OPSEC-lite) | snapshots, metadata, timestamps                              |       12 h | VM mgr                     | Express OPSEC Check-in #1 · Sun 2025-11-09                          |

**PAD (Exam) — PAD-0B01**
Window: 2025-11-10 → 2025-11-13 · Deliverable: integrated mission (pipeline + permissions + backup) with reproducible evidence and brief defense.

---

### 1B01 Toolchain, Debugging & Version Control (4 weeks · \~120 total hours)

**Objective:** Professional build/debug profile; diagnostics; performance.
**· BT:** Encrypted configuration (benign data) + strict validation (CPP-R).

| Stack                | Thematic cluster                                    | Est. hours | Key tools     | Assignment (CPP-R) · Due                                                      |
| -------------------- | --------------------------------------------------- | ---------: | ------------- | ----------------------------------------------------------------------------- |
| Git & Workflow       | branches, local PRs, hooks, semantic tags           |       18 h | git           | Repo hygiene checklist · Thu 2025-11-20                                       |
| Make/CMake           | targets/deps/vars, reusable templates               |       24 h | make/cmake    | CPP-R-1B01-1: generic Makefile (build/test/asan/ubsan/clean) · Sun 2025-11-23 |
| Compilers & Flags    | gcc/clang, -O{0..3}, -g, -Wall -Wextra -Werror, LTO |       18 h | gcc/clang     | —                                                                             |
| Sanitizers           | ASan/UBSan/Leak, assertions                         |       18 h | -fsanitize    | CPP-R-1B01-2: memory bug-hunt + core dump · Sun 2025-11-30                    |
| Debug/Tracing        | gdb/lldb, strace/ltrace, core files                 |       24 h | gdb/lldb      | —                                                                             |
| Profiling & Binutils | perf, time, readelf/objdump/nm/strings              |       18 h | perf/binutils | CPP-R-1B01-3: memcpy/memmove micro-benchmark · Sun 2025-12-07                 |

**PAD (Exam) — PAD-1B01**
**Date:** Wed 2025-12-10 · Deliverable: write-up + quick demo of your build template, failure analysis, and performance notes.

**Q1 Midterm Checkpoint (ungraded):** Mon 2025-12-15 — brief defense (10–12 min) on 0B01/1B01 + mini OPSEC audit.

---

### Q2 — Detailed Schedule

### 2B01 Systems C I — Part A (4 weeks · \~120 total hours)

**Objective:** Pointers and memory, safe I/O, mmap, basics of binary parsing.
**· BT:** Minimal telemetry (structured logs) and local summary for utilities (CPP-R).

| Stack                 | Thematic cluster                                                      | Est. hours | Assignment (CPP-R) · Due                                                       |
| --------------------- | --------------------------------------------------------------------- | ---------: | ------------------------------------------------------------------------------ |
| Pointers & Layout     | pointers, const/restrict, structs/unions/bitfields, alignment/padding |       24 h | —                                                                              |
| Dynamic Memory        | malloc/calloc/realloc/free, ownership, simple arenas                  |       24 h | —                                                                              |
| I/O & mmap            | stdio vs syscalls (open/read/write), buffers, mmap                    |       30 h | CPP-R-2B01-1: own hexdump (offset + ASCII) · Sun 2026-01-18                    |
| Binary Parsing (safe) | headers, checks, error contracts                                      |       24 h | CPP-R-2B01-2: mini binary viewer (header + sections via mmap) · Sun 2026-01-25 |
| Error Handling        | errno, contracts, preconditions                                       |       18 h | —                                                                              |

**PAD (Exam) — PAD-2B01-A**
**Date:** Tue 2026-01-27 · Deliverable: specifications + test matrix + threat report for your utilities.

---

### 3B01 Systems C I — Part B (4 weeks · \~120 total hours)

**Objective:** Safe string subset, intro to sockets, tests & light fuzzing.

| Stack                 | Thematic cluster                          | Est. hours | Assignment (CPP-R) · Due                                             |
| --------------------- | ----------------------------------------- | ---------: | -------------------------------------------------------------------- |
| Safe Strings (subset) | x\_strlcpy/strnlen\_s-style + tests       |       30 h | CPP-R-3B01-1: mini safe-strings lib + >80% coverage · Sun 2026-02-08 |
| Sockets Intro         | TCP/UDP; blocking vs non-blocking         |       24 h | CPP-R-3B01-2: minimal TCP client (timeouts OK) · Sun 2026-02-15      |
| Testing & Fuzzing     | unit tests; honggfuzz/AFL (20-min runs)   |       30 h | CPP-R-3B01-3: parser fuzz pass (no crashes) · Sun 2026-02-22         |
| Security Pitfalls     | bounds, off-by-one, fmt, UAF, double-free |       24 h | —                                                                    |
| Docs & Contracts      | function specs, contracts, cases          |       12 h | —                                                                    |

**PAD (Exam) — PAD-3B01**
**Date:** Tue 2026-02-24 · Deliverable: consolidated documentation + tests/evidence package.

---

### 4B01 x86\_64 Architecture & ABI; Practical Assembly (4 weeks · \~120 total hours)

**Objective:** Calls, stack discipline, syscalls, C↔asm integration, ABI contrasts.
**· BT:** LD\_PRELOAD hook “counter/echo” (benign) with evidence package (CPP-R).

| Stack                      | Thematic cluster                           | Est. hours | Assignment (CPP-R) · Due                                                    |
| -------------------------- | ------------------------------------------ | ---------: | --------------------------------------------------------------------------- |
| SysV ABI & Stack           | registers, prologue/epilogue, nested calls |       24 h | —                                                                           |
| Syscalls & errno           | numbers, syscall, errors/errno             |       24 h | CPP-R-4B01-1: syscall wrappers (write/getpid) without libc · Sun 2026-03-01 |
| C ↔ asm Integration        | inline asm; structs by value               |       30 h | CPP-R-4B01-2: mixed C+asm passing structs · Sun 2026-03-08                  |
| Mem Routines in asm        | memset/memcmp impl + cross-tests           |       30 h | CPP-R-4B01-3: asm vs C benchmarks · Sun 2026-03-15                          |
| ABI Contrast (Win vs SysV) | conceptual differences                     |       12 h | —                                                                           |

**PAD (Exam) — PAD-4B01**
**Date:** Tue 2026-03-17 · Deliverable: ABI notes (stack diagrams) + comparative benches.

---

### 5B01 Linking, Loading & Formats (ELF, PLT/GOT, LD\_PRELOAD) (4 weeks · \~120 total hours)

**Objective:** Symbol resolution in the loader and interception in userland.

| Stack                  | Thematic cluster                               | Est. hours | Assignment (CPP-R) · Due                                               |
| ---------------------- | ---------------------------------------------- | ---------: | ---------------------------------------------------------------------- |
| ELF Basics             | headers, sections vs segments, relocs, symbols |       30 h | CPP-R-5B01-1: minimal ELF parser (sections + symbols) · Sun 2026-03-22 |
| Linking (PIC/PIE)      | static/dynamic, PLT/GOT, lazy binding          |       24 h | —                                                                      |
| Shared Libs            | building .so, symbol visibility                |       18 h | CPP-R-5B01-2: LD\_PRELOAD hook for open/fopen · Sun 2026-03-29         |
| Tooling                | ldd, patchelf, objdump/readelf                 |       24 h | CPP-R-5B01-3: manual rpath/runpath PoC · Tue 2026-03-31                |
| PE vs ELF (high level) | future preparation                             |       12 h | —                                                                      |

**PAD (Exam) — PAD-5B01**
**Date:** Wed 2026-04-01 · Deliverable: linking architecture report + before/after symbol tables for the hook with evidence.

**Express Module (parallel) — F1-Express: Minimal Lab OPSEC**
**Check-ins:** at the end of each block (0B01, 1B01, … 5B01)
**Deliverable:** signed OPSEC checklist applied to F1 repos (partial sign-off at each closure).

---

### Q3 — Detailed Schedule

### 6B01 Windows & PE Fundamentals for Analysts (4 weeks · \~120 total hours) — New

**Objective:** PE layout, sections, imports/exports, timestamps, hashes/signatures; reproducible PE triage.

| Stack                      | Thematic cluster                                  | Est. hours | Assignment (CPP-R) · Due                                                  |
| -------------------------- | ------------------------------------------------- | ---------: | ------------------------------------------------------------------------- |
| PE Layout & Hashing        | DOS/NT headers, sections, time-date stamp, hashes |       30 h | CPP-R-6B01-1: reproducible PE triage (hashes + sections) · Sun 2026-04-12 |
| Imports/Exports & Metadata | IAT/EAT, RVA/offsets, signatures                  |       24 h | CPP-R-6B01-2: import/export extraction with evidence · Sun 2026-04-19     |
| Toolchain (Win)            | dumpbin/llvm-objdump/pelib (benign)               |       24 h | CPP-R-6B01-3: PE report with reproducible manifest · Sun 2026-04-26       |
| Reporting & Ethics         | report format, boundaries, benign labeling        |       12 h | —                                                                         |

**PAD (Exam) — PAD-6B01**
**Date:** Tue 2026-05-05 · Deliverable: mini PE-triage report (hashes, sections, imports, IOCs) with evidence.

---

### 7B01 Intro to Malware Analysis: Safe Triage & IOCs (4 weeks · \~120 total hours) — New

**Objective:** strings/regex → IOC table, YARA-lite (static), dynamic logging (benign harness), reporting and ethics.

| Stack               | Thematic cluster                    | Est. hours | Assignment (CPP-R) · Due                                               |
| ------------------- | ----------------------------------- | ---------: | ---------------------------------------------------------------------- |
| Strings/Regex → IOC | extraction and normalization to CSV |       30 h | CPP-R-7B01-1: strings→IOC pipeline (reproducible CSV) · Sun 2026-05-17 |
| YARA-lite (static)  | basic rules, local validation       |       24 h | CPP-R-7B01-2: YARA-lite set with verification · Sun 2026-05-24         |
| Dynamic Logging     | benign harness, controlled traces   |       24 h | CPP-R-7B01-3: execution with reproducible logging · Sun 2026-06-07     |
| Reporting & Ethics  | mini-report (10–12 lines)           |       12 h | —                                                                      |

**PAD (Exam) — PAD-7B01**
**Date:** Tue 2026-06-10 · Deliverable: integrated mission (IOC + YARA-lite + logging) with evidence.

**MJT (optional during Q3):**

* **MJT-T (7B01)** mini-case with benign artifacts and network/persistence limits; short debrief.
* **MJT-Post** after a CPP-R to validate robustness (if applicable).

---

### Grading & Milestones (Phase 1)

* **CPP-R:** weekly closures, typically on Sundays (see tables).
* **PADs (Exams):** at the close of each block (dates above).
* **Phase 1 Final Sign-off:** Fri 2026-06-26 — all CPP-R/PAD complete, reproducible evidence, signed OPSEC checklist, one-command repro OK.
* **Rubric:** A/B/C/Redo per F1 specification (clean sanitizers, tests present, clear docs).
