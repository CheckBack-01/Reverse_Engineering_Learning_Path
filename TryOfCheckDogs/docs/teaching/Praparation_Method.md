# Preparation Method - Try Of Check Dogs (TOCD)

## Introduction: My structured self-education approach

I seek **verifiable technical competence** through deliberate practice and reproducible evidence.

This document explains **how I learn**, **which tools I use**, **how much time I devote**, and **why this method works for me** to build real skills in malware analysis and reverse engineering.

---

## 1) Core philosophy: Hands-On Only (70–80% practice)

**My guiding principle is simple:** theory without practice is dead knowledge. I read documentation only when I need to understand something in order to execute it; I don't read for the sake of reading.

### **Daily time distribution**

* **5 hours/day (Mon–Sat)** during **Phase 0–3** (24-month preparation)
* **3 hours/day** during periods of **certifications or employment** (adjusted for workload)
* **0% passive memorization**, **100% execution and evidence**

### **Structure of a typical session (5 h)**

| Time block    | Activity                                        | Purpose                        |
| ------------- | ----------------------------------------------- | ------------------------------ |
| **0:00–0:30** | Review concepts from the previous day           | Reinforce retention            |
| **0:30–2:00** | **GDP (Guided Drills Protocol)** by topic       | Fluency in commands/techniques |
| **2:00–2:15** | Break + result verification                     | Avoid burnout                  |
| **2:15–4:00** | **CPP-R** (reproducible closure of the stack)   | Integration and evidence       |
| **4:00–4:30** | Documentation + manifest.json                   | Traceability                   |
| **4:30–5:00** | CTF/practice platform (HackTheBox/Cyberdefense) | Application in real scenarios  |

---

## 2) Platforms and tools I use

### **A) Continuous practice platforms**

**Active use since Phase 0 (0B02 - Python for Security):**

1. **HackTheBox (HTB)**

   * **What I do:** 2–3 machines/week (Easy → Medium)
   * **Why:** realistic pentesting and reversing scenarios
   * **Evidence:** reproducible writeups in my repo (public box only)
2. **TryHackMe (THM)**

   * **What I do:** themed rooms (Malware Analysis, RE, Binary Exploitation)
   * **Why:** didactic, step-by-step, ideal for consolidating concepts
   * **Evidence:** technical notes + solution scripts
3. **Cyberdefenders / Flare On (Blue Team focus)**

   * **What I do:** CTF, log analysis, hunting with YARA/Sigma, triage
   * **Why:** defensive perspective that complements offensive analysis
   * **Evidence:** analysis reports + detection rules

### **B) Bug Bounty (real practice, since Maturation Gap)**

**Platforms:**

* **HackerOne / Bugcrowd** (public programs)
* **Intigriti** (European programs, some with malware samples)

**What I do:**

* Reproducible reports with **CPP-R** (exploit code, manifest, evidence)
* Focus on vulnerabilities a malware analyst would see: memory corruption, logic flaws, deserialization

**Why it's critical:**

* It forces me to **explain my findings technically**
* I learn to **document for third parties** (key for malware reports)
* Some reports are **publishable** → public portfolio

---

## 3) Laboratory methodology: CPP-R, PAD, GDP

### **A) GDP (Guided Drills Protocol) - Guided practice**

**What it is:** short and verifiable exercises on a specific technique (e.g., using `strace`, writing a YARA rule, parsing PE headers).

**How I do it:**

1. Read the minimum concept (5–10 min)
2. Execute the drill with a controlled dataset (15–30 min)
3. Verify the output with an automatic script (5 min)
4. Record metrics: accuracy (≥90%) and time

**Concrete example (Phase 1, 7B01 - YARA):**

```bash
# Drill: write 5 YARA rules to detect common packers
# Dataset: 50 benign binaries + 50 packed samples
# Verification: script that computes FP/FN
# Objective: FP ≤ 3%, FN ≤ 10%
```

**Frequency:** 3–5 drills per stack (Day A of the per-stack method)

---

### **B) CPP-R (Proof of Concept Reproducible) - Stack closure**

**What it is:** unguided test that integrates all the topics of the stack into a single executable script (`cpp_run.sh`) with complete evidence.

**How I do it:**

1. Receive brief (sometimes encrypted with GPG)
2. Build solution in a clean VM (NAT-only, snapshot)
3. Script must be **idempotent**: running twice yields the same result
4. Generate `evidence/` with:

   * `run.log` (timestamps, commands executed)
   * `checksums.txt` (SHA-256 of outputs)
   * `manifest.json` (tool versions, metrics, inputs/outputs)
   * Screenshots if applicable
5. Sign with GPG (VALIDSIG)

**Concrete example (Phase 2, 0B04 - Unpack):**

```bash
# Objective: unpack UPX-like binary, rebuild IAT
# Input: packed_sample.bin
# Output: unpacked_sample.bin + imports.json + evidence/
# Verification: post_hash == expected_hash
# Time limit: 2 hours
```

**Frequency:** 1 per stack (Day C of the per-stack method)

---

### **C) PAD (Practical Aptitude Drill) - Block-integrated mission**

**What it is:** evaluation that combines several stacks from the same block in a realistic scenario.

**How I do it:**

1. Brief gives minimal context (e.g., "suspicious binary, analysis time: 4 h")
2. Apply techniques from multiple stacks:

   * Static triage (PE/ELF parsing)
   * YARA over corpus
   * Unpack if it is packed
   * Controlled dynamic analysis
   * Extraction of IOCs
3. Produce a technical report (1–2 pages) with:

   * Initial hypothesis
   * Verifiable findings
   * Limits of the analysis
   * Next steps
4. Verification script validates achieved objectives

**Concrete example (Phase 1, PAD-7B01 - MA Intro):**

```
Input: suspect.bin + corpus_mixed.zip
Objective:
  - Reproducible PE triage
  - ≥10 YARA rules
  - FP ≤ 3%, FN ≤ 10%
  - Report with IOCs mapped to ATT&CK
Time: 4 hours
```

**Frequency:** 1 per block (end of block, before next phase)

---

## 4) How I learn malware analysis: technical pipeline

### **Phase 0–1: Fundamentals (Oct 2025 - May 2026)**

**Objective:** understand operating systems, memory, binaries before touching real malware.

**What I do:**

* **Linux/Windows:** fluency in CLI, scripting, permissions, processes
* **Networking:** TCP/IP, Wireshark, packet analysis
* **Systems-C:** pointers, memory, safe binary parsing
* **x86_64/ABI:** calling conventions, stack, syscalls
* **ELF/PE:** structure of binaries, linking, imports/exports

**Tools:**

* Compilers (gcc/clang with sanitizers)
* Debuggers (gdb/lldb, WinDbg)
* Binutils (readelf, objdump, nm, strings)
* PE parsers (pefile, dumpbin, PE-bear)

**Why this first:** Without understanding how a legitimate binary works, I cannot analyze a malicious one.

---

### **Phase 2: Applied Reversing (Dec 2026 - May 2027)**

**Objective:** reverse real binaries (packed, obfuscated) and understand in-memory execution.

**What I do:**

**Static:**

* Identify packer (UPX, Themida, custom)
* Map CFG (control flow graph)
* Rename functions
* Extract obfuscated strings

**Dynamic:**

* Breakpoints at OEP (original entry point)
* Tracing of API calls (x64dbg, WinDbg)
* Memory dump post-unpack
* IAT reconstruction

**In-memory loaders:**

* Manual mapping of DLLs
* Process hollowing (classic injection technique)
* APC queueing for execution

**Tools:**

* x64dbg/WinDbg (Windows debuggers)
* Ghidra/IDA Free (disassemblers)
* PE-sieve (detection of anomalies in memory)
* Scylla (IAT reconstruction)

**Platforms:**

* HackTheBox: machines with custom binaries
* Malware Traffic Analysis: samples with pcaps

---

### **Phase 3: Exploitation (Jun 2027 - Sep 2027)**

**Objective:** understand how vulnerabilities are exploited to create/defend against advanced malware.

**What I do:**

**Userland:**

* Stack overflow + ROP (Return-Oriented Programming)
* Heap exploitation (UAF, tcache poisoning)
* Info-leaks to defeat ASLR

**Kernel (intro):**

* IOCTL vulnerabilities
* R/W primitive (read/write arbitrary memory)
* Local elevation (userland - SYSTEM)

**Why this is critical:** Modern malware uses exploits to evade defenses. If I don't understand exploitation, I can't analyze advanced malware.

**Tools:**

* Pwntools (exploitation framework)
* ROPgadget/ropper (gadget search)
* WinDbg with kernel symbols
* QEMU for safe testing

---

### **Maturation gap: Intensive practice (Jun–Nov 2026)**

**Objective:** apply everything learned in real scenarios before diving deeper into exploitation.

**MAD20 (MITRE ATT&CK Defender):**

* I learn the common language of threat hunting
* Map malware techniques to ATT&CK
* **Why:** when I analyze malware, I must communicate which technique it uses

**GFACT (GIAC Foundational Cybersecurity):**

* Fundamentals of operational security
* **Why:** professional context for my analyses

**Bug Bounty/CTFs:**

* 3 submissions/month minimum
* Some accepted/published → public portfolio
* **Why:** demonstrates competence in real scenarios

---

## 5) How I build benign malware tools (Builder Track)

### **Philosophy: every offensive technique has a defensive counterpart**

When I build an evasion/persistence/C2 tool, I also build:

1. **Detection rules** (YARA/Sigma)
2. **"Blue" panel** that shows generated artifacts
3. **Cleanup checklist** for complete rollback

**Concrete example (Phase 4, F4-B3 - Persistence):**

```
Offensive tool:
  - Persistence script (Scheduled Task in Windows)
  - install/start/stop/uninstall

Defensive tool:
  - Sigma rule that detects Task creation
  - Audit script that lists suspicious Tasks
  - Panel with before/after (what changed on the system)

Evidence:
  - cpp_run.sh executes both
  - evidence/ contains logs from the blue panel
  - manifest.json records created/removed artifacts
```

**Why this makes me a better analyst:**

* I understand how the attacker thinks (I created the tool)
* I know how to detect it (I wrote the rules)
* I can explain it technically (I have the evidence)

---

## 6) Time distribution: 5h vs 3h per day

### **Mode 5h/day (Phase 0–3, full dedication)**

**Scenario:** without employment, 100% focused on preparation.

| Hours | Activity                                           | Tools                        |
| ----- | -------------------------------------------------- | ---------------------------- |
| 2.5 h | **GDP + CPP-R** of the current stack               | VM lab, scripting, debuggers |
| 1.5 h | **CTF/practice platform** (HTB/THM/Cyberdefenders) | Box of the day, writeup      |
| 0.5 h | **Documentation** (manifest, README, checksums)    | Git, markdown                |
| 0.5 h | **Review/planning** (what I did, what's next)      | Notion/Obsidian              |

**Weekly frequency:**

* 6 days/week (Mon–Sat)
* Sunday: active rest (technical reading, code review, community)

---

### **Mode 3h/day (Gap, certifications, employment)**

**Scenario:** preparing certification (CCNA/GFACT) or working.

| Hours | Activity                                | Adjustment  |
| ----- | --------------------------------------- | ----------- |
| 1.5 h | **Certification material** or **work**  | Priority 1  |
| 1.0 h | **CTF/Bug Bounty** (maintain practice)  | Priority 2  |
| 0.5 h | **TOCD backlog** (mini-drill or review) | Maintenance |

**Why it works:**

* I don't lose technical muscle
* I keep the portfolio active (Bug Bounty)
* I can adjust according to workload

---

## 7) Evidence and reproducibility: how I demonstrate competence

### **Problem I solve:**

Anyone can say "I know how to analyze malware." I can **prove it** with verifiable evidence.

### **My evidence standard (per CPP-R):**

```
block/<stack>/cpp/CPP-R_<name>/
├─ cpp_run.sh          # reproduces everything with 1 command
├─ manifest.json       # versions, hashes, metrics
└─ evidence/
   ├─ run.log         # timestamps, commands executed
   ├─ checksums.txt   # SHA-256 of outputs
   └─ screenshots/    # key screenshots (if applicable)
```

**Acceptance criteria:**

1. **Idempotent:** running twice yields the same result
2. **Reproducible in a clean VM:** another person can replicate it
3. **Traceable:** `run.log` has timestamps and exact commands
4. **Verifiable:** `checksums.txt` validates output integrity

**Why this is powerful:**

* In an interview, I can say: "here is the repo, run `cpp_run.sh`"
* In Bug Bounty, my report has reproducible code
* At work, my malware analyses are auditable

---

## 8) Laboratory tools (my technical setup)

### **Hardware:**

* Decent laptop (16GB RAM minimum, multi-core CPU)
* External drive for VM backups

### **Base software:**

**Host (Windows/Linux dual-boot):**

* Git for versioning
* Obsidian/Notion for notes
* VSCode for scripting

**VMs (VirtualBox/VMware):**

1. **Kali Linux** (general analysis, CTFs)
2. **Ubuntu Server** (tooling development)
3. **Windows 10** (Windows malware analysis, debugging)
4. **FlareVM** (FLARE team distribution with RE tools)

**Critical configuration:**

* **NAT-only** (no direct internet in analysis VMs)
* **Snapshots** before each analysis
* **Rollback** tested (I can return to a clean state in <5 min)

### **Tools by phase:**

**Phase 0–1 (Fundamentals):**

* gcc/clang (compilers with sanitizers)
* gdb/lldb (Linux debuggers)
* binutils (objdump, readelf, nm, strings)
* WinDbg (Windows debugger)
* pefile (PE parser in Python)

**Phase 2–3 (Reversing/Exploitation):**

* Ghidra/IDA Free (disassemblers)
* x64dbg (Windows debugger, userland)
* Frida (dynamic instrumentation)
* Radare2 (RE framework)
* pwntools (exploitation framework)
* YARA (pattern matching)
* Sigma (detection rules)

**Phase 4–5 (Evasion/Kernel):**

* Visual Studio (Windows driver development)
* WDK (Windows Driver Kit)
* QEMU (emulator for kernel testing)
* EDK II (UEFI development)
* Process Hacker (advanced process monitoring)
* Sysmon (Windows telemetry)

---

## 9) How I measure progress: technical KPIs

### **Monthly:**

* ≥1 CPP-R completed and reproducible
* ≥2 CTFs solved (HTB/THM)
* ≥3 Bug Bounty submissions (during Gap and Phase 2–3)

### **By phase:**

* **Phase 0:** 4 CPP-Rs + CCNA
* **Phase 1:** 6–8 CPP-Rs + 2 PADs + ≥10 YARA rules
* **Phase 2:** 6–8 CPP-Rs + 2 PADs + 1 reproducible unpack
* **Phase 3:** 4–6 CPP-Rs + 1 PAD + 1 Capstone (userland - SYSTEM)

### **Readiness checklist (before applying, Oct 2027):**

* [ ] ≥16 CPP-Rs in public repo
* [ ] ≥10 documented Bug Bounty reports
* [ ] CCNA + GFACT + MAD20 certified
* [ ] 1 Capstone (F3) reproducible
* [ ] Clean and professional portfolio

---

## 10) Why this method works

### **1. Deliberate practice > passive consumption**

I don't watch tutorials without executing; I execute and document evidence.

### **2. Immediate feedback**

The graders (verification scripts) tell me whether my code works or not. There is no ambiguity.

### **3. Multiple angles of attack**

* GDP: fluency in isolated techniques
* CPP-R: integration of techniques
* PAD: application in a realistic scenario
* CTF/BB: external scenarios I don't control

### **4. Portfolio building from day 1**

Each CPP-R is a portfolio piece. By October 2027 I have 16–20 reproducible projects.

### **5. Community and external feedback**

* Bug Bounty: senior researchers review my reports
* CTFs: I compare solutions with others
* GitHub: public code can be audited

### **6. Focus on creating AND defending**

I not only learn to analyze malware; I learn to build tools and detect them. This gives me a complete perspective.

---

## 11) Adjustments and flexibility

### **If a block takes more time:**

* I prioritize quality over speed
* I compress less critical blocks afterward
* I don't sacrifice reproducibility to meet a date

### **If I need income before Oct 2027:**

* Technical freelancing (scripting, automation)
* Bug Bounty can generate real income
* Mode 3h/day + part-time work is viable

### **If I find a knowledge gap:**

* Pause the current stack
* Micro-sprint of 1–2 days on the missing foundation
* Resume with a solid base

---

## Conclusion: my commitment to evidence

**I seek real competence.**

Every technique I learn, I execute. Every technique I execute, I document. Every technique I document, I defend.

At the end of this plan (Oct 2027), I won't have a diploma that says "I know how to analyze malware." I will have a repository with 16–20 reproducible CPP-Rs, 10–15 Bug Bounty reports, and 3 Capstones that anyone can run and verify.

**That is my calling card.**

**Start date:** October 9, 2025
**First job application:** October 2027
**Motto:** *"If it isn't reproducible, it doesn't exist; if it leaves no evidence, it doesn't count."*
