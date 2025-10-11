### **Plan - TOCD (Try Of Check Dogs)**

### 1) Personal Statement

I want to become a **Reverse Engineer / Malware Analyst** with mastery of **defense evasion** and the ability to **build and break controls** on **Windows and Linux** at a low level.

My career is structured self-education, deliberate practice, reproducible evidence, and a verifiable technical portfolio. I prioritize offensive reversing, measurable evasion, and the engineering of benign adversary-emulation tools for the lab. My methods and conventions live in this repository.

---

### 2) Principles

* **Lab-only:** VM with **NAT**, **snapshots**, and tested **rollback**; **benign** artifacts; zero traffic out of scope.
* **Reproducibility or it doesn’t exist:** every exercise closes with a **1-command CPP-R** (`cpp_run.sh`) + `manifest.json` + `evidence/` (includes `run.log`, `checksums.txt`) and **GPG signature (VALIDSIG)**.
* **Encrypted briefs:** Encrypted Mission Protocol where applicable.
* **Time with intent:** 70–80% practice; minimal enabling theory.
* **Portfolio > paper:** reproducible deliverables and professional-quality reports.

### 3) The structure: Baseline Path + TOCD Path

My plan is split into **two tracks**:

### **Baseline Path (4 months)** - Operational fundamentals

Before entering TOCD, I need to **lay solid foundations** in systems, networking, and scripting. Without these competencies, learning malware analysis and reversing would be slow and frustrating.

**Phase 0 - Baseline:**

* **Linux Power User:** advanced CLI, permissions, processes, Bash scripting.
* **Networking Essentials:** TCP/IP, subnetting, Wireshark, iptables + **CCNA**.
* **Python for Security:** syntax, libraries (requests, scapy), recon scripting.
* **Windows Administration:** PowerShell, registry, event logs, Sysmon.

- **Deliverables:** 4 CPP-Rs (1 per block) + **CCNA** + weekly CTFs.

- **Duration:** 4 months (Oct 2025 - Jan 2026).

---

### **TOCD Path (5 phases)** - Technical track

After completing Baseline, I enter **TOCD**: the main **Reverse Engineering** and **Malware Analysis** track. This is the backbone of my career.

**Phase 1 - Eniac (Fundamentals with an MA lens):**

* Systems-C, x86_64/ABI, ELF/PE, controlled triage.
* **Duration:** 4 months (Feb 2026 - May 2026).

**Maturation gap (6 months):**

* Portfolio preparation, **MAD20** (ATT&CK), **GFACT**, Bug Bounty/CTFs.
* **Duration:** Jun 2026 - Nov 2026.

**Phase 2 - IBM 1401 (Applied Reversing & Userland Execution):**

* Static/dynamic, unpack, loaders, injection, evasion.
* **Duration:** 6 months (Dec 2026 - May 2027).

**Phase 3 - Intel 4004 (Userland Internals & Exploitation):**

* Memory, ROP, heap, kernel primitives, local elevation.
* **Duration:** 4 months (Jun 2027 - Sep 2027).

**Job applications:** Oct 2027 (complete portfolio).

**Phase 4 - Univac 1108 (Evasion, Persistence and C2):**

* Loader/implant, reversible persistence, lab C2.
* **Post-employment**, focused on advanced red team techniques.

**Phase 5 - YoneEvilHost (Kernel, Firmware, UEFI/Boot):**

* Kernel development (LKM, drivers), UEFI/OVMF, didactic rootkits.
* **Post-employment**, for full-stack mastery.

> **Note:** Phases 4 and 5 **are not within the 24 months of preparation** for the first job, but **are part of TOCD**.

### 4) High-level timeline (24 months of preparation)

| Period              | Primary focus               | Key deliverables                              |
| ------------------- | --------------------------- | --------------------------------------------- |
| **Oct-25 - Jan-26** | **Phase 0 (Baseline)**      | Linux/Windows/Networking/Scripting + **CCNA** |
| **Feb-26 - May-26** | **Phase 1 (Eniac)**         | 6–8 CPP-Rs (Systems-C, ABI, ELF/PE, MA Intro) |
| **Jun-26 - Jul-26** | **Portfolio prep**          | Repos, CPP-R templates, BB/CTF targets        |
| **Aug-26 - Sep-26** | **MAD20 + Bug Bounty/CTFs** | ATT&CK badges + 6–8 BB submissions            |
| **Oct-26 - Nov-26** | **GFACT + Bug Bounty/CTFs** | **GFACT** certified + 10–12 BB submissions    |
| **Dec-26 - May-27** | **Phase 2 (IBM 1401)**      | 6–8 CPP-Rs (RE, unpack, loaders)              |
| **Jun-27 - Sep-27** | **Phase 3 (Intel 4004)**    | 4–6 CPP-Rs (exploits, kernel)                 |
| **Oct-27**          | **Job applications**        | **Complete portfolio + applications**         |


### 5) Certifications and technical signal

**Target certifications:**

* **CCNA** (Cisco Networking) - networking fundamentals.
* **GFACT** (GIAC Foundational Cybersecurity) - security fundamentals.
* **MAD20** (MITRE ATT&CK Defender) - common threat-hunting language.

**Technical portfolio:**

* **16-20 reproducible CPP-Rs** (with `evidence/`, `manifest.json`, `checksums.txt`).
* **10-15 Bug Bounty/CTF reports** (some accepted/published).
* **6-8 PADs** (integrated block missions).
* **1 Capstone** (documented exploitation chain).

### 6) Why these certifications

* **CCNA:** real networking; foundation for traffic/C2 analysis.
* **GFACT:** cybersecurity fundamentals; gateway to other GIAC certs.
* **MAD20:** common ATT&CK language; hunting; modular evidence (badges).

### 7) Methods and protocols

I use four main protocols to structure the learning:

* **GDP (Guided Drills Protocol):** guided, verifiable practice to build fluency.
* **CPP-R (Reproducible Proof of Concept):** stack-integrating proof, 1 command, with manifest and evidence.
* **PAD (Practical Aptitude Drill):** block-integrated mission with verification on a clean VM.
* **MJT (Mock Job Test):** mini job test with minimal context and automatic validation.

**Standard evidence format:**

```
block/
└─ <stack>/
    └─ cpp/
       ├─ cpp_run.sh          # reproduces PoC with 1 command
       ├─ manifest.json       # versions, hashes, metrics
       └─ evidence/
          ├─ run.log          # execution timestamps
          └─ screenshots/     # captures if applicable
```

### 8) KPIs and progress metrics

**By phase:**

| Phase     |    CPP-Rs |  PADs | BB/CTF Reports | Certifications         |
| --------- | --------: | ----: | -------------: | ---------------------- |
| Phase 0   |         4 |     - |              - | CCNA                   |
| Phase 1   |       6–8 |     2 |              - | -                      |
| Gap       |         - |     - |          10–12 | GFACT, MAD20           |
| Phase 2   |       6–8 |     2 |          15–20 | -                      |
| Phase 3   |       4–6 |     1 |          20–25 | -                      |
| **Total** | **20–26** | **5** |      **20–25** | **CCNA, GFACT, MAD20** |

**Monthly:**

* ≥1 CPP-R/month (Phase 0-3)
* ≥2 CTFs/week (from Phase 0)
* ≥3 BB submissions/month (during Gap and Phase 2-3)

### 9) Readiness checklist (before applying)

As of **October 2027**, I must have:

* [*] **CCNA** certified
* [*] **GFACT** certified
* [*] **MAD20** badges complete
* [*] **≥16 CPP-Rs** in a public repo
* [*] **≥10 BB/CTF reports** documented
* [*] **1 Capstone** (userland → SYSTEM) reproducible
* [*] **GitHub/portfolio** clean and professional
* [*] **LinkedIn** updated with certifications and portfolio
* [*] **Technical resume** (1 page, verifiable skills)

### 10) Future vision

**Short term (24 months):** complete Baseline + Phases 1–3 of TOCD, obtain the first job as **Malware Analyst**, **Threat Intelligence **or **Reverse Engineer -> jr**.

**Medium term (post-employment):** complete Phases 4 and 5 of TOCD, specialize in **advanced evasion**, **C2**, **kernel**, and **firmware**.

**Long term:** be a reference in **offensive reverse engineering** and **malware analysis**, with the ability to **build and break controls** at any level of the stack (userland, kernel, firmware).


### Conclusion

This plan is **pure self-education**: **deliberate practice**, **reproducible evidence**, and a **verifiable portfolio**.

**Start date:** October 9, 2025
**First job application:** October 2027
**Total preparation time:** 24 months
