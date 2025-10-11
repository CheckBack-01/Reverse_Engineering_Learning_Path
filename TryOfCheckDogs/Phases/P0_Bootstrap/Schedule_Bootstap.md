# Phase 0 — Bootstrap (Operational Baseline)

**Syllabus & Schedule** (Quarters · Blocks · Stacks)

- **Coverage:** 2025-10-09 → 2026-01-31
- **Cadence:** ~30 h/week (5 h/day, Mon–Sat)
- **Methodology:** CPP-R (reproducible closures) + PAD (Practical Aptitude Drill: block-integrated mission, optional) + GDP (guided drills) · Lab-only (OPSEC/Legal)

- **Global outcomes (F0):** 4 CPP-Rs, CCNA certified, functional tools (Bash, Python, PowerShell), troubleshooting competency, lab logbook, and minimal OPSEC checklist.

- **Builder Track (F0):** inventory script (Bash), traffic analysis tool (Python), log parser (Python), baseline script (PowerShell).

---

### Quarter Map (high level)

* **Q1 (2025-10-09 → 2025-12-31):** 0B00 Linux Power User, 0B01 Networking Essentials (start)
* **Q2 (2026-01-01 → 2026-01-31):** 0B01 Networking (closure + CCNA), 0B02 Python, 0B03 Windows (accelerated if needed)


### Q1 — Detailed Schedule

### 0B00 — Linux Power User (6 weeks · ~180 total hours)

**Objective:** Fluency in CLI, advanced permissions, processes, systemd, and professional Bash scripting.

**BT:** System inventory script with logging and error handling (CPP-R with evidence).

| Stack             | Thematic cluster (examples)                              | Est. hours | Key tools           | Assignment (CPP-R) · Due                                                       |
| ----------------- | -------------------------------------------------------- | ---------: | ------------------- | ------------------------------------------------------------------------------ |
| Advanced CLI      | FHS, navigation, search (find/locate), files/directories |       24 h | coreutils, find     | **CPP-R-0B00-1:** navigation + inventory script · **Sun 2025-10-20**           |
| Permissions & ACL | chmod/chown, umask, getfacl/setfacl, use cases           |       18 h | coreutils, acl      | **CPP-R-0B00-2:** permissions application with validation · **Sun 2025-10-27** |
| Pipelines         | grep/sed/awk/xargs, regex, complex chains                |       30 h | GNU tools           | **CPP-R-0B00-3:** log analysis pipeline · **Sun 2025-11-03**                   |
| Processes         | ps/top/htop, kill, nice/renice, systemd basics           |       24 h | proc tools, systemd | Quiz checkpoint (theory) · **Thu 2025-11-07**                                  |
| Bash Scripting    | arrays, functions, error handling, set -euo pipefail     |       36 h | bash                | **CPP-R-0B00-4:** automation script with rollback · **Sun 2025-11-17**         |
| Logs & Journaling | journalctl, /var/log, rsyslog                            |       12 h | systemd, rsyslog    | Mini-lab: log analysis · **Sun 2025-11-24**                                    |

**PAD (Exam) — PAD-0B00 (optional)**
**Window:** 2025-11-25 → 2025-11-28 · **Deliverable:** task orchestrator with logging, error handling, and rollback.

### 0B01 — Networking Essentials (8 weeks · ~240 total hours)

**Objective:** Networking fundamentals (TCP/IP, subnetting, routing) and CCNA certification.

**BT:** Traffic analysis tool (Python + scapy) with pattern detection.

| Stack              | Thematic cluster                       | Est. hours | Key tools          | Assignment (CPP-R) · Due                                                       |
| ------------------ | -------------------------------------- | ---------: | ------------------ | ------------------------------------------------------------------------------ |
| TCP/IP & OSI       | TCP/IP stack, OSI model, IP addressing |       24 h | docs/wireshark     | **CPP-R-0B01-1:** traffic capture with analysis · **Sun 2025-12-08**           |
| Subnetting         | CIDR, VLSM, subnet calculations        |       24 h | subnet calculators | **CPP-R-0B01-2:** subnet spreadsheet · **Sun 2025-12-15**                      |
| Routing            | static/dynamic, RIP/OSPF (concepts)    |       18 h | GNS3/Packet Tracer | Mini-lab: basic configuration · **Sun 2025-12-22**                             |
| DNS/DHCP/NAT       | name resolution, IP assignment         |       18 h | bind/dnsmasq       | **CPP-R-0B01-3:** DNS traffic analysis · **Sun 2025-12-29**                    |
| Capture & Analysis | tcpdump, Wireshark, filters, pcap      |       36 h | tcpdump/wireshark  | **CPP-R-0B01-4:** suspicious traffic analysis (simulated) · **Sun 2026-01-05** |
| Basic Firewall     | iptables/nftables, rules, logging      |       24 h | iptables/nft       | **CPP-R-0B01-5:** firewall with documented rules · **Sun 2026-01-12**          |
| CCNA Prep          | integrated review, practice exams      |       96 h | Cisco NetAcad      | **CCNA Exam** · **2026-01-31**                                                 |

**PAD (Exam) — PAD-0B01 (recommended)**
**Date:** **2026-01-20** · **Deliverable:** complete traffic analysis (PCAP + report + Python tool).

---

### Q2 — Detailed Schedule (accelerated)

### 0B02 — Python for Security (3 weeks · ~90 total hours)

**Objective:** Solid syntax and automation scripting for security.

**BT:** Log parser/analyzer with IOC extraction.

| Stack               | Thematic cluster                 | Est. hours | Assignment (CPP-R) · Due                                                              |
| ------------------- | -------------------------------- | ---------: | ------------------------------------------------------------------------------------- |
| Syntax & Structures | types, control flow, lists/dicts |       18 h | **CPP-R-0B02-1:** basic recon script · **Sun 2026-01-26** *(adjusted)*                |
| Key Libraries       | requests, scapy, argparse, json  |       24 h | **CPP-R-0B02-2:** log parser with structured output · **Sun 2026-02-02** *(adjusted)* |
| Sockets & Regex     | HTTP client, regex for parsing   |       24 h | **CPP-R-0B02-3:** traffic analysis tool · **Sun 2026-02-09** *(adjusted)*             |
| Testing & Docs      | unittest, docstrings, README     |       24 h | **CPP-R-0B02-4:** tool suite with tests · **Sun 2026-02-16** *(adjusted)*             |

**PAD (Exam) — PAD-0B02 (optional)**
**Date:** **Wed 2026-02-18** *(adjusted)* · **Deliverable:** recon tool suite + log parser.


### 0B03 — Windows Administration (2 weeks · ~60 total hours, compressed)

**Objective:** Proficiency in PowerShell and basic Windows auditing.

**BT:** Baseline + change-detection script (PowerShell).

| Stack               | Thematic cluster                         | Est. hours | Assignment (CPP-R) · Due                                                    |
| ------------------- | ---------------------------------------- | ---------: | --------------------------------------------------------------------------- |
| PowerShell Basics   | cmdlets, objects, pipeline, WMI          |       18 h | **CPP-R-0B03-1:** system inventory · **Sun 2026-02-23** *(adjusted)*        |
| Registry & Services | registry management, services, processes |       12 h | **CPP-R-0B03-2:** configuration baseline · **Sun 2026-03-02** *(adjusted)*  |
| Event Logs & Sysmon | log analysis, Sysmon configuration       |       18 h | **CPP-R-0B03-3:** event log analysis · **Sun 2026-03-09** *(adjusted)*      |
| Automation          | scheduled tasks, advanced scripts        |       12 h | **CPP-R-0B03-4:** change-detection script · **Sun 2026-03-16** *(adjusted)* |

**PAD (Exam) — PAD-0B03 (optional)**
**Date:** **Wed 2026-03-18** *(adjusted)* · **Deliverable:** complete baseline + audit script.

---

### Grading & Milestones (Phase 0)

* **CPP-R:** weekly closures, typically on Sundays (see tables).
* **PADs (Exams):** at the end of each block (dates above, **some optional**).
* **Phase 0 Final Sign-off:** **Fri 2026-01-31** — all CPP-Rs complete, **CCNA certified**, reproducible evidence, OPSEC checklist signed, **one-command repro OK**.
* **Rubric:** A/B/C/Redo per F0 specification (functional scripts, CCNA passed, clear documentation).

### Notes

* Dates are **anchors** for planning; minor variations don’t change deliverables or evidence standards.
* **Lab-only** work with **benign** artifacts, snapshots, and reproducible evidence.
* F0 block naming: `0B00`, `0B01`, `0B02`, `0B03`; **PAD** = block-integrated mission (optional, but recommended for 0B01).
* **CTFs:** 2–3/week from 0B02 (HackTheBox, TryHackMe) in parallel.

### Expected accumulated credits (end of Phase 0)

* **Certifications:** **CCNA** (Cisco Networking Associate).
* **Portfolio:** 4 CPP-Rs + functional tools (Bash, Python, PowerShell).
* **Preparation for TOCD:** solid foundations in systems, networking, and scripting.

---

### Deliverables and evidence (canonical format)

```
/cpp/
  cpp_run.sh            # reproduces PoC/lab with 1 command
/evidence/
  run.log               # execution timestamps
  checksums.txt         # artifact sha256
  screenshots/          # if applicable
manifest.json           # versions, hashes, synthetic dataset
REPORT.md               # triage-ready (steps, replay, impact, mitigation)
SIGNATURE.asc           # VALIDSIG (GPG)
```

**Pre-delivery checklist:**

- [ ] Reproducible on a clean VM 
- [ ] Exact steps + replay  
- [ ] Functional scripts 
- [ ] Complete `evidence/` + **VALIDSIG**

---

### Quarterly KPIs (F0)

* ≥1 **CPP-R**/month.
* **CCNA:** passed by the end of Q1 or start of Q2.
* ≥2 **CTFs**/week (from 0B02).
