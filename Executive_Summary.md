# Try Of Check Dogs (TOCD) — Executive Summary

## What is TOCD?

**TOCD** (Try Of Check Dogs) is a **24-month structured self-education program** to prepare me for the **Reverse Engineer / Malware Analyst** track with verifiable competency through reproducible evidence.

---

## My Story

Since I was a kid, I’ve liked planning and **building things**, even breaking toys to see how they work inside. When I discovered cybersecurity, I realized I could apply the same creativity in a technical setting: **build and break controls to understand how systems work**.

This repository is the outcome: a 24-month on-ramp with **verifiable technical standards**.

---

## The Core Philosophy

```
If it's not reproducible, it doesn't exist.
If it leaves no evidence, it doesn't count.
If it's not encrypted, it doesn't travel.
```

Every exercise I do:

* Runs with **a single command** (`cpp_run.sh`)
* Produces **complete evidence** (logs, hashes, manifest)
* Is **reproducible on any clean VM**
* Is **digitally signed** (GPG)

---

## Structure: 24 Months of Preparation

| Phase                       | Period              | Objective                             | Deliverables                      |
| --------------------------- | ------------------- | ------------------------------------- | --------------------------------- |
| **Phase 0 — Baseline**      | Oct 2025 → Jan 2026 | Linux, Windows, networking, scripting | 4 CPP-Rs + **CCNA**               |
| **Phase 1 — Eniac**         | Feb → May 2026      | MA/RE fundamentals                    | 6–8 CPP-Rs + 2 PADs               |
| **Maturation gap**          | Jun → Nov 2026      | Certifications + Bug Bounty           | **MAD20 + GFACT** + 10–12 reports |
| **Phase 2 — IBM 1401**      | Dec 2026 → May 2027 | Reversing & userland execution        | 6–8 CPP-Rs + 2 PADs               |
| **Phase 3 — Intel 4004**    | Jun → Sep 2027      | Exploitation & kernel intro           | 4–6 CPP-Rs + **Capstone F3**      |
| **Post-employment (F4–F5)** | Oct 2027 → Mar 2030 | Evasion, C2, kernel, UEFI             | 8–12 CPP-Rs + **Capstone F5**     |

**Totals at the end of preparation (Oct 2027):**

* [ ] 20–26 reproducible CPP-Rs
* [ ] 5 integrated PADs
* [ ] 20–25 Bug Bounty/CTF reports
* [ ] 3 verifiable certifications (CCNA, GFACT, MAD20)
* [ ] Public, auditable portfolio

---

## Methodology: Hands-On Only

### Daily allocation (5 h/day)

```
0:00–0:30 | Concept review
0:30–2:00 | GDP (Guided Drills: isolated techniques)
2:00–2:15 | Break + verification
2:15–4:00 | CPP-R (reproducible integration)
4:00–4:30 | Documentation (manifest, hashes)
4:30–5:00 | CTF / platform (real-world application)
```

### Practice formats

* **GDP (Guided Drills):** Short, guided exercises to build technical fluency (15–30 min, auto-verification).
* **CPP-R (Reproducible Proof of Concept):** One-command reproducible project integrating the stack topics (2–4 h, full evidence).
* **PAD (Practical Aptitude Drill):** Block-integrated mission without guidance, with report and auto-grader (3–8 h).
* **CTF/Bug Bounty:** Practice in real scenarios (2–3/week from Phase 0, documented reports).

---

## What I Build

### Technical artifacts

1. **Automation scripts** (Bash, Python, PowerShell)
2. **Analysis tools** (parsers, detectors, heuristics)
3. **Benign loaders** (in-memory execution with educational PoC)
4. **Detection rules** (YARA, Sigma)
5. **Reproducible reports** (triage, malware analysis, IOCs)

### Evidence for each project

```
cpp/
└── CPP-R_NAME/
     ├── cpp_run.sh              # Reproducible with 1 command
     ├── manifest.json           # Versions, hashes, metrics
     └── evidence/
        ├── run.log              # Execution timestamps
        ├── checksums.txt        # Output SHA-256
        └── screenshots/         # Key captures (if applicable)
```

---

## Verifiable Certifications

* **CCNA (Cisco Certified Network Associate)** — networking, fundamentals
* **GFACT (GIAC Foundational Cybersecurity)** — operational security
* **MAD20 (MITRE ATT&CK Defender)** — common threat-hunting language

All are **official, internationally verifiable accreditations**.

---

## OPSEC & Security

I work **exclusively in isolated VMs** (NAT-only) in VirtualBox/VMware:

* [ ] Snapshots before every analysis
* [ ] Proven rollback in <5 minutes
* [ ] Zero traffic to external systems
* [ ] Benign artifacts (no real malware)
* [ ] Sensitive briefs encrypted (GPG)

Everything complies with OPSEC/Legal under `docs/OPSEC_Legal.md`.

---

## Learning Pillars

### 1. Reverse Engineering

Disassemble, analyze, and understand packed, obfuscated, or protected binaries.

### 2. Malware Analysis

Identify IOCs, map techniques to ATT&CK, produce reproducible technical reports.

### 3. Userland Exploitation

Understand vulnerabilities (stack, heap, memory) to defend systems with sound judgment.

### 4. Builder Track

Build **benign adversary-emulation tools** and their **defensive counterparts** (YARA rules, detection scripts).

---

## Key Milestones

| Milestone                       | Date             | Status                 |
| ------------------------------- | ---------------- | ---------------------- |
| Phase 0 start                   | Oct 9, 2025      | Pending                |
| CCNA certified                  | Dec 31, 2025     | Pending                |
| Phase 1 complete                | May 31, 2026     | Pending                |
| MAD20 + GFACT                   | Nov 30, 2026     | Pending                |
| Phase 2 complete                | May 31, 2027     | Pending                |
| Phase 3 complete                | Sep 30, 2027     | Pending                |
| **Portfolio 100% reproducible** | **Sep 30, 2027** | **← Job applications** |
| First role (MA/RE entry)        | **Oct 2027**     | Target                 |

---

## Values That Define Me

1. **Reproducibility over speed** — a slower but reproducible project > a fast but fragile one.
2. **Evidence over promises** — I can run my code in your VM and prove what it does.
3. **Openness and documentation** — everything public, nothing hidden (except encrypted sensitive briefs).
4. **Measurable learning** — technical KPIs, not declarative grades.
5. **Ethics & OPSEC** — isolated work, benign artifacts, 100% legal compliance.

---

## How to Contribute / Provide Feedback

If you find technical errors, suggestions, or improvements:

1. Open an **Issue** describing the problem
2. If you have a technical fix, create a **Pull Request**
3. **Provide reproducible evidence** (logs, screenshots, manifest)

The goal is for TOCD to be **continuously verifiable and improvable**.

---

## Contact & Community

* **GitHub Issues:** bugs, suggestions, technical questions
* **Technical blog:** [coming soon] notes on completed phases
* **Community:** [coming soon] Discord channel for others on a similar path

---

**Start date:** October 9, 2025
**First job application:** October 2027
**Total preparation time:** 24 months

“If it’s not reproducible, it doesn’t exist; if it leaves no evidence, it doesn’t count.”
