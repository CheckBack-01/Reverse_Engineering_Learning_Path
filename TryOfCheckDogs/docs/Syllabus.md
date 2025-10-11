### Syllabus - Try Of Check Dogs (TOCD)

- **Plan window:** 9-oct-2025 → 30-sep-2027 (24 months of preparation)
- **Cadence:** ~30 h/week (5 h/day, Mon–Sat)

**Methodology:** **GDP** (guided drills) · **CPP-R** (reproducible closures) · **PAD** (block mission) · **MJT** (mock job test) · **Lab-only/OPSEC**

### 1) Rules

* **Lab-only:** VM with **NAT**, **snapshots**, and proven **rollback**; **benign** artifacts; zero out-of-scope traffic.
* **Reproducibility or it doesn’t exist:** each practice closes with a **1-command CPP-R** (`cpp_run.sh`) + `manifest.json` + `evidence/` (`run.log`, `checksums.txt`) and **GPG signature (VALIDSIG)**.
* **Encryption by default:** sensitive briefs/resources under **Encrypted Mission Protocol**.
* **Time with intent:** 70–80% practice; minimal enabling theory.

### 2) Structure: Baseline Path + TOCD Path

### **Baseline Path (Phase 0)** — 4 months

Operational fundamentals in systems, networks, and scripting before entering TOCD.

### **TOCD Path (Phases 1–5)** — Technical career

* **Phases 1–3:** within the 24 months of preparation (feb 2026 → sep 2027).
* **Phases 4–5:** post-employment, advanced specialization.

---

### 3) Integrated schedule (24 months, exact dates)

### **Phase 0 — Baseline (9-oct-2025 → 31-ene-2026)**

**Coverage:** 16 weeks
> **Objective:** operational competence in Linux, Windows, networking, and scripting.

#### **0B00 — Linux Power User (6 weeks)**

**9-oct-2025 → 19-nov-2025**

* Advanced CLI, permissions, processes, systemd, journalctl
* Networking: ip, ss, tcpdump, basic wireshark
* Bash scripting: arrays, functions, error handling
* **CPP-R:** automation script + system inventory
* **PAD:** task orchestrator with logging and rollback

#### **0B01 — Networking Essentials (6 weeks)**

**20-nov-2025 → 31-dic-2025**

* TCP/IP, subnetting, routing, DNS, NAT
* Advanced Wireshark, packet analysis
* Basic firewall (iptables)
* **Certification:** **CCNA** (end of block, 31-dic-2025)
* **CPP-R:** capture and analysis of suspicious traffic (simulated)

#### **0B02 — Python for Security (4 weeks)**

**1-ene-2026 → 28-ene-2026**

* Syntax, structures, libraries (requests, scapy)
* Recon and parsing scripting
* Sockets and network programming
* **CPP-R:** recon tool or log parser
* **CTFs:** HackTheBox/TryHackMe (2–3/week)

#### **0B03 — Windows Administration (4 weeks)**

**29-ene-2026 → 25-feb-2026** *(adjusted to make room for Phase 1)*

* PowerShell: cmdlets, objects, remoting
* Registry, services, event logs
* Basic auditing with Sysmon
* **CPP-R:** inventory script + baseline

**Phase 0 deliverables:**

* 4 CPP-Rs (1 per block)
* **CCNA** (31-dic-2025)
* CTFs: 2–3/week (from 0B02)

---

### **Phase 1 — Eniac (1-feb-2026 → 31-may-2026)**

**Coverage:** 17 weeks
> **Objective:** fundamentals with a Malware Analysis lens.

#### **2B01–3B01 — Systems-C I (8 weeks)**

**1-feb-2026 → 28-mar-2026**

* Pointers, memory, binary parsing
* Low-level I/O, `mmap`, basic sockets
* Testing and light fuzzing
* **CPP-R:** hexdump + safe-strings + parser
* **PAD:** Systems-C block

#### **4B01 — x86_64/ABI/ASM (3 weeks)**

**29-mar-2026 → 18-abr-2026**

* SysV conventions, stack, syscalls
* C↔asm integration
* **CPP-R:** syscall wrappers + asm routines
* **BT:** Benign LD_PRELOAD hook

#### **5B01 — Linking/ELF/PLT/GOT (3 weeks)**

**19-abr-2026 → 9-may-2026**

* ELF, dynamic linking, PLT/GOT
* LD_PRELOAD, `patchelf`
* **CPP-R:** ELF parser + `open/fopen` hook

#### **6B01 — Windows & PE Fundamentals (2 weeks)**

**10-may-2026 → 23-may-2026**

* PE layout, imports/exports, hashes
* Reproducible PE triage
* **CPP-R:** PE report with manifest

#### **7B01 — Intro to Malware Analysis (1 week)**

**24-may-2026 → 31-may-2026**

* IOCs, YARA-lite, controlled triage
* **CPP-R:** strings + YARA → CSV pipeline
* **PAD:** MA block

**Phase 1 deliverables:**

* 6–8 CPP-Rs
* 2 PADs (Systems-C + MA)
* ≥10 functional YARA rules

---

### **Maturation gap (1-jun-2026 → 30-nov-2026)**

**Coverage:** 6 months
> **Objective:** portfolio, certifications, real practice.

#### **Portfolio preparation (jun–jul 2026)**

**1-jun-2026 → 31-jul-2026**

* Polish existing CPP-Rs
* Reporting templates
* Selection of BB/CTF targets

#### **MAD20 + Bug Bounty/CTFs (ago–sep 2026)**

**1-ago-2026 → 30-sep-2026**

* **MAD20 Basic** (2.5 h/d): ATT&CK mapping
* **Bug Bounty/CTFs** (2.5 h/d): real practice
* **Deliverables:** MAD20 badges + 6–8 BB submissions

#### **GFACT + Bug Bounty/CTFs (oct–nov 2026)**

**1-oct-2026 → 30-nov-2026**

* **GFACT prep + exam** (3.0 h/d)
* **Bug Bounty/CTFs** (2.0 h/d)
* **Deliverables:** **GFACT** certified + 10–12 total BB submissions

---

### **Phase 2 — IBM 1401 (1-dic-2026 → 31-may-2027)**

**Coverage:** 6 months
**Objective:** Applied Reversing & Userland Execution.

#### **0B04 — Applied Reversing I (6 weeks)**

**1-dic-2026 → 11-ene-2027**

* Static/dynamic, basic anti-analysis
* 1-layer unpack + minimal IAT
* **CPP-R:** reproducible unpack
* **BT:** Local benign loader

#### **1B04 — Deep PE & In-Memory Loaders (6 weeks)**

**12-ene-2027 → 22-feb-2027**

* PE in practice, in-memory loaders
* Manual mapping (intro)
* **CPP-R:** PE parser + manual map DLL
* **PAD:** PE/Loaders block

#### **2B04 — Userland Execution & Mitigations (10 weeks)**

**23-feb-2027 → 31-may-2027**

* CRT+LoadLibrary, APC queueing
* Process hollowing (intro)
* DEP/ASLR/CFG
* **CPP-R:** comparison by technique
* **PAD:** Execution block

**Phase 2 deliverables:**

* 6–8 CPP-Rs (RE, unpack, loaders)
* 2 PADs
* CTFs: 1–2/week

---

### **Phase 3 — Intel 4004 (1-jun-2027 → 30-sep-2027)**

**Coverage:** 4 months
> **Objective:** Userland Internals & Exploitation.

#### **0B04 — Process & Memory Internals (4 weeks)**

**1-jun-2027 → 28-jun-2027**

* PEB/TEB, regions, modules, heaps
* **CPP-R:** process map + PEB/TEB walk

#### **1B03 — Userland Exploitation I (3 weeks)**

**29-jun-2027 → 19-jul-2027**

* Stack overflow, basic ROP
* **CPP-R:** educational exploit
* **BT:** Detection harness

#### **2B04 — Advanced Windows Internals (3 weeks)**

**20-jul-2027 → 9-ago-2027**

* Memory/Object Manager, ETW
* **CPP-R:** handle map + region map

#### **3B03 — Userland Exploitation II (3 weeks)**

**10-ago-2027 → 30-ago-2027**

* Info-leak + ROP/JOP (Win/Linux)
* **CPP-R:** exploits with harness

#### **4B03 — Heap Exploitation (2 weeks)**

**31-ago-2027 → 13-sep-2027**

* UAF, tcache/fastbin
* **CPP-R:** PoCs + hardening

#### **5B05 — Kernel Fundamentals + Elevation (2 weeks)**

**14-sep-2027 → 27-sep-2027**

* IOCTL, R/W primitive
* **CPP-R:** elevation to SYSTEM (VM)

#### **6B02 — F3-CAP (1 week)**

**28-sep-2027 → 30-sep-2027**

* **Capstone:** userland → SYSTEM
* **PAD:** Phase 3 integrator

**Phase 3 deliverables:**

* 4–6 CPP-Rs (exploits, kernel)
* 1 PAD
* 1 Capstone

---

## 4) Certifications and portfolio (as of 30-sep-2027)

**Certifications:**

* **CCNA** (31-dic-2025)
* **GFACT** (30-nov-2026)
* **MAD20** (30-sep-2026)

**Technical portfolio:**

* **20–26 CPP-Rs** reproducible
* **10–15 Bug Bounty/CTF reports**
* **5 PADs** (integrated missions)
* **1 Capstone** (F3)

## 5) KPIs by phase

| Phase     |    CPP-Rs |  PADs | BB/CTF Reports | Certifications         |
| --------- | --------: | ----: | -------------: | ---------------------- |
| Phase 0   |         4 |     — |              — | CCNA                   |
| Phase 1   |       6–8 |     2 |              — | —                      |
| Gap       |         — |     — |          10–12 | GFACT, MAD20           |
| Phase 2   |       6–8 |     2 |          15–20 | —                      |
| Phase 3   |       4–6 |     1 |          20–25 | —                      |
| **Total** | **20–26** | **5** |      **20–25** | **CCNA, GFACT, MAD20** |

**Monthly:**

* ≥1 CPP-R/month (Phase 0–3)
* ≥2 CTFs/week (from Phase 0)
* ≥3 BB submissions/month (during Gap and Phase 2–3)

## 6) Methods and protocols

* **GDP:** guided drills by topic
* **CPP-R:** reproducible stack closure (1 command)
* **PAD:** integrated block mission
* **MJT:** mock job test (per schedule)

**Evidence format:**

```
cpp/
├── cpp_run.sh
├── manifest.json
└── evidence/
    ├── run.log
    ├── checksums.txt
    └── screenshots/
```


## 7) Ethics and OPSEC

All work is **benign** and runs in an **isolated VM** with snapshots and rollback; zero third-party targets without authorization; encrypted briefs when applicable; **evidence and signatures** discipline as standard.


## 8) Key dates (reminder)

* **9-oct-2025:** start Phase 0
* **31-dic-2025:** CCNA certified
* **1-feb-2026:** start Phase 1 (Eniac)
* **1-jun-2026:** start Maturation Gap
* **30-sep-2026:** MAD20 badges complete
* **30-nov-2026:** GFACT certified
* **1-dic-2026:** start Phase 2 (IBM 1401)
* **1-jun-2027:** start Phase 3 (Intel 4004)
* **30-sep-2027:** preparation close, start of applications
* **oct-2027:** job applications


# Phases 4–5: Post-Employment, Advanced Specialization

> **Note:** These phases are **not within the 24 months of preparation** for the first job, but **are part of TOCD**. They are taken **after obtaining employment** and with practical field experience.

---

### Phase 4 — Univac 1108 (Evasion, Persistence, and C2)

**Estimated coverage:** 12 months (post-employment)
**Prerequisite:** work experience as MA/RE (6–12 months minimum)

> **Objective:** mastery of advanced red team techniques, telemetry-aware evasion, reversible persistence, and operational C2.

### **Scope**

Phase 4 consolidates **evasion, persistence, and C2** in an **isolated** lab environment, focused on loader/implant engineering, telemetry-conscious design, and controlled deployments. All work is educational and governed by **OPSEC/Legal**.

### **Main blocks**

#### **8A — Initial Access & Covert Delivery (lab)**

* Local HTTP(S)/WS/DNS profiles in isolated network
* Benign staging with validation
* **BT:** Benign implant (innocuous tasks) with timing control and logging
* **CPP-R:** reproducible delivery profile with local traffic evidence

#### **8B — Minimal Blue Track**

* Reproducible event collection (Win/Linux)
* Minimal metrics dashboard
* **BT:** Before/after baseline (telemetry)
* **CPP-R:** observability panel + key metrics

#### **F4-B1 — Evasion I (artifact reduction)**

* Artifact matrix (files, keys, processes, network, memory)
* Build hardening, minimal footprint
* **BT:** Before/after measurement of benign implant
* **CPP-R:** surface comparison with evidence

#### **F4-B2 — Evasion II (telemetry-aware)**

* Telemetry-conscious ETW/logs design
* Delta validation with instrumentation
* **BT:** Telemetry-aware adjustments
* **CPP-R:** impact analysis with metrics

#### **9B — Implant Crypto & Packer v2**

* Encrypted config (AEAD recommended)
* Didactic packing with validation
* **BT:** Packer v2 with integrity validation
* **CPP-R:** encrypted config + reproducible packer

#### **F4-B3 — Cross-platform Persistence (rollback)**

* Windows: Scheduled Tasks/services
* Linux: systemd/cron
* Auditing and verified cleanup
* **BT:** Reversible persistence with checklist
* **CPP-R:** install/start/stop/uninstall without residue

#### **F4-B4 — Covert C2 & Traffic Profiling**

* Benign server/client in isolated network
* Queues, authentication, backoff
* Simple traffic profiling
* **BT:** Lab C2 with metrics
* **CPP-R:** documented protocol + resilience tests

#### **F4-B5 — Covert Operations (lab)**

* End-to-end operation with OPSEC checklist
* Error and timing control
* **CPP-R:** coordinated reproducible operation

#### **F4-CAP — Integrated Operation (96 h)**

* Integration: loader/implant + persistence + C2
* Technical defense of the solution
* **Deliverable:** `capstone-f4/` with code, scripts, reproducible README, evidence, and presentation

### **Expected outcomes**

* **OPSEC playbook** and signed checklist
* **Loader/implant** with encrypted configuration and timing control
* **Persistence** on Windows/Linux with **safe rollback**
* **Lab C2** (server + client) with logging and metrics
* **Evasion** report focused on detection surfaces
* **Reproducible infrastructure** for controlled deployment
* **F4-Capstone:** end-to-end chain with complete evidence

### **KPIs Phase 4**

* 8–12 CPP-Rs (1 per block/module)
* 1 Capstone (F4-CAP)
* Functional “blue” panel with metrics
* Documented artifact matrix
* All techniques reversible and detectable

---

### Phase 5 — YoneEvilHost (Kernel, Firmware, UEFI/Boot)

**Estimated coverage:** 6 months (post-employment)
**Prerequisite:** userland experience + Phase 4 completed

> **Objective:** operational understanding of kernel (Linux/Windows), firmware, and bootflow in a **lab-only** environment (VM + OVMF).

### **Scope**

Phase 5 consolidates **observability and kernel development** (Linux/Windows) and an operational understanding of **UEFI/bootflow** in a lab environment. All work is **benign**, **reproducible**, and governed by **OPSEC/Legal**.

### **Main blocks**

#### **Pre-flight — Readiness for kernel/firmware**

* Clean VMs (Win/Linux) and OVMF snapshots
* WinDbg KD and symbols; `dmesg`, `ftrace`, `kprobes`
* QEMU + OVMF/edk2; firmware tooling
* Proven **rollback** and recovery policies
* **CPP-R:** debugging verification + QEMU+OVMF boot

#### **F5-B1 — Kernel Observability & Toolchain**

* WinDbg KD (break-in, symbols, `!process/!thread`)
* Linux: kprobes/kretprobes, ftrace, tracefs
* Signal mapping (ETW/Sysmon/auditd ↔ kernel events)
* **BT:** Signal↔event table + environment checklist
* **CPP-R:** KD playbook + tracing recipe + signal↔event table

#### **F5-B2 — Linux LKM & Telemetry**

* Toolchain and headers; Kbuild/Kconfig
* Metric export via `procfs/sysfs`
* Kprobes on selected syscalls
* **BT:** LKM with toggles/telemetry + tests + rollback
* **CPP-R:** LKM skeleton + stress + rollback checklist

#### **F5-B3 — Windows Driver Fundamentals**

* KMDF project, INF, test signing
* Minimal IOCTL (queues, dispatch, safe buffers)
* Callbacks (`PsSetCreateProcessNotifyRoutineEx`, `PsSetLoadImageNotifyRoutine`)
* **BT:** Benign KMDF driver (echo IOCTL + callbacks)
* **CPP-R:** skeleton + IOCTL + callbacks + tests

#### **F5-B4 — UEFI/OVMF & Bootflow**

* EDK II toolchain; SEC→PEI→DXE
* OVMF analysis (UEFITool/UEFIExtract)
* UEFI Shell; NVRAM variables
* Secure Boot on/off comparison (lab)
* **BT:** Benign DXE in OVMF (inventory/logging)
* **CPP-R:** EDK II environment + DXE + evidence + Secure Boot notes

#### **F5-B5 — Rootkit-style PoCs (VM only)**

* Linux: didactic interception with kprobes/ftrace
* Windows: process/image/registry callbacks (controlled logging)
* “Blue” validation with rules/queries (YARA/Sigma/KQL)
* **All PoCs reversible and detectable**
* **CPP-R:** PoC with toggle + before/after comparison

#### **F5-CAP — Kernel/Firmware Blue-Aware**

* Integrate: kernel telemetry + benign DXE in OVMF
* “Blue” evaluation and technical defense
* **Deliverable:** `capstone-f5/` with code, scripts, README, evidence, presentation, and signed OPSEC checklist

### **Expected outcomes**

* F5 environment ready (KD, kprobes, QEMU-OVMF)
* Proven **rollback** policies
* **LKM (Linux)** with didactic telemetry and toggles
* **Windows driver** benign with IOCTL and callbacks
* **Rootkit-style PoCs** reversible and **detectable** by the “blue” panel
* **Benign DXE** in OVMF with boot logging
* Educational boot module with Secure Boot on/off comparison
* **F5-Capstone:** kernel + firmware chain with defense and verified rollback

### **KPIs Phase 5**

* 6–10 CPP-Rs (1 per block)
* 1 Capstone (F5-CAP)
* Functional LKM + Driver
* Operational benign DXE
* All techniques reversible in VM
* “Blue” panel with detection of own artifacts

---

## Summary of the complete TOCD structure

```
Baseline Path (4 months)
└── Phase 0: Baseline
    └── Linux/Windows/Networking/Python

TOCD Path - Preparation (20 months)
├── Phase 1: Eniac (4 months)
│   └── Systems-C, x86_64, ELF/PE, MA Intro
├── Maturation gap (6 months)
│   └── MAD20, GFACT, Bug Bounty/CTFs
├── Phase 2: IBM 1401 (6 months)
│   └── Applied Reversing, Loaders, Userland Execution
└── Phase 3: Intel 4004 (4 months)
    └── Memory, Exploits, Kernel Intro

TOCD Path - Post-Employment (18 months)
├── Phase 4: Univac 1108 (12 months)
│   └── Evasion, Persistence, C2
└── Phase 5: YoneEvilHost (6 months)
    └── Kernel, Firmware, UEFI/Boot
```

*"From zero to userland (24 months), from userland to kernel (18 months), always with reproducible evidence."*
