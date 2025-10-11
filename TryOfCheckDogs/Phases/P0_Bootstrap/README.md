# Phase 0 — Bootstrap (Operational Baseline)

- **Start:** 2025-10-09
- **Target role:** Competent technical operator in Linux, Windows, networking, and scripting
- **Security:** Lab-only, benign artifacts, NAT network, encrypted briefs (GPG), reproducible evidence

### Scope

Phase 0 builds **operational competence** in systems, networks, and scripting before entering TOCD. Without these foundations, learning malware analysis and reversing would be slow and frustrating. Verifiable scripts, reproducible configurations, and the tools.

### Methodology

* **GDP (Guided Drills Protocol):** short, topic-verified drills (Composite Stack Day A/B structure).
* **CPP-R (Reproducible Proof of Concept):** reproducible “one-command” closure per **Composite Stack** with `cpp/run.sh`, `manifest.json`, and `cpp/evidence/`.
* **PAD (Practical Aptitude Drill):** block-integrated mission with report and verification (optional in Phase 0, but recommended for 0B01).
* **Encrypted Mission Protocol:** briefs/resources travel signed + encrypted when they contain sensitive information.
* **Repo/OPSEC:** VM snapshots, benign datasets, no third-party data.


### Phase-level outcomes

* **4 CPP-R** with evidence packages and verified **idempotency** (1 per block).
* **CCNA** certified (Cisco Networking Associate).
* 1 **automation script** in Bash with logging and error handling.
* 1 **recon/parsing tool** in Python with tests.
* 1 **Windows inventory script** in PowerShell with a reproducible baseline.
* **Lab logbook**, **OPSEC** checklist, and **signed tags** per block.
* Competence with **tcpdump/Wireshark**, traffic analysis, and basic firewall configuration.


### How the phase is organized

**Naming.** Blocks use codes like `0B00` (first digit = phase index, second = block index). A block can span multiple **stacks** (Composite Stack).

### 0B00 — Linux Power User

> **Objective.** Advanced command-line, permissions, processes, systemd, and professional Bash scripting.

**Highlights.** FHS and advanced permissions (chmod/chown/ACL), complex pipelines (grep/sed/awk/xargs), process management (`ps`, `top`, `systemd`), `/proc` and `/sys`, logging with `journalctl`, Bash scripting (arrays, functions, error handling, `set -euo pipefail`).

- **CPP-R (examples).** Automation script with structured logging and rollback; incremental backup with integrity verification; task orchestrator with error control.

- **PAD (evidence).** Operating system diagram; permissions matrix and use cases; documented complex pipeline.

- **· BT:** **System inventory script** with logging, error handling, and structured output (JSON/CSV).

---

### 0B01 — Networking Essentials + CCNA

> **Objective.** Solid networking fundamentals (TCP/IP, subnetting, routing) and **CCNA** certification.

**Highlights.** TCP/IP stack and OSI model; subnetting and VLSM; basic routing (static/dynamic); DNS, DHCP, NAT; traffic capture and analysis (tcpdump, Wireshark); basic firewall (iptables/nftables); network troubleshooting.

- **CPP-R (examples).** Capture and analysis of suspicious traffic (simulated); firewall configuration with documented rules; network monitoring script with alerts.

- **PAD (evidence).** Network topology diagram; traffic analysis with Wireshark (PCAP + report); documented troubleshooting with reproducible steps.

- **Certification:** **CCNA** (Cisco Certified Network Associate).

- **· BT:** **Traffic analysis tool** (Python + scapy) with basic pattern detection and reporting.

---

### 0B02 — Python for Security

> **Objective.** Solid syntax, essential libraries, and automation scripting for security tasks.

**Highlights.** Syntax and control structures; lists, dictionaries, sets; functions and modules; error handling (`try/except`); key libraries: `requests` (HTTP), `scapy` (networking), `argparse` (CLI), `json` (parsing); basic sockets; regex; file I/O.

- **CPP-R (examples).** Recon tool (subdomain enumeration, port scanning); log parser (CSV/JSON output); HTTP client with error handling; automation script with argparse.

- **PAD (evidence).** Recon tool suite with tests; log parser with validation; documentation of technical decisions.

- **· BT:** **Log parser/analyzer** extracting IOCs, aggregating metrics, and producing structured output.

---

### 0B03 — Windows Administration

> **Objective.** Proficiency in PowerShell, Windows system management, and basic auditing.

**Highlights.** PowerShell: cmdlets, objects, pipeline; WMI and CIM; registry management; services and processes; event logs (Get-EventLog, Get-WinEvent); Sysmon (configuration and analysis); NTFS permissions and ACLs; scheduled tasks; basic remoting (WinRM).

- **CPP-R (examples).** System inventory script (hardware, software, users); configuration baseline with before/after comparison; event log analysis with filtering and alerts; automation of administrative tasks.

- **PAD (evidence).** Complete system inventory with scripts; reproducible baseline; Sysmon log analysis with change detection.

- **· BT:** **Baseline + change-detection script** (PowerShell) with diff report and alerts.


### Learning (skills and mindset)

* Mastery of **Linux/Bash** for automation and troubleshooting.
* **Networking** fundamentals (TCP/IP, subnetting, traffic capture) with **CCNA**.
* **Python** for security scripting (recon, parsing, automation).
* **Windows/PowerShell** for administration and auditing.
* **Reproducible evidence** discipline from day one (CPP-R, manifest, checksums).
* **Technical operator** mindset: solve problems with tools, not just theory.


### Outcomes and success criteria

* **4 CPP-Rs** (1 per block) with complete evidence (`run.log`, `manifest.json`, `checksums.txt`).
* **CCNA** certified.
* **Functional, well-documented** scripts and tools.
* Competence in systems and network **troubleshooting**.
* **CTFs solved:** 2–3/week starting at 0B02 (HackTheBox, TryHackMe).
* Phase evaluation:

  * **A:** Reproducible CPP-Rs; CCNA passed; functional tools; clear documentation.
  * **B:** ≥80% CPP-Rs; CCNA passed; tools with minor bugs.
  * **C:** ≥60% CPP-Rs; CCNA pending or passed with difficulty.
  * **Redo:** <60% or CCNA not attempted.

### Assessment (CPP-R & PAD)

* **CPP-R.** Reproducible closure per **Composite Stack** with clear objectives, verifiable steps, and artifacts (`run.log`, `manifest`, `checksums`, screenshots).
* **PAD.** Block-integrated mission with report and verification on a clean VM (optional in Phase 0, recommended for 0B01).
* Each block **closes with a CPP-R** and minimum evidence; **PAD** per plan

