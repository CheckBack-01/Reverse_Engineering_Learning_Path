# Reverse Engineering Learning Path — TOCD

> Author: Denis Yunior Pérez Medina -> [Checkback]

Official repository of the TOCD plan (TryOfCheckDogs): a self-directed curriculum in Reverse Engineering and Malware Analysis. It contains phases, reproducible labs (**CPP-R**), drills (**GDP**), integrated missions (**PAD**), guides, and evidence. Anyone should be able to find a lab, run it with a script, and verify the evidence via hashes.

For recruiters / employers

- Read : GUIDE_FOR_RECRUITERS.md
- Explore : CPP-R Portfolio (representative stacks)
- Verify : manifest.json + checksums.txt (reproducibility)
- Run :  cpp_run.sh in your own VM (one-command demo)

For auditors / code reviewers

- Read :  docs/opsec/Opsec_Legal.md (compliance)
- Verify :  GPG tags signed per block
- Validate : Scripts against the TOCD checklist
- Report : Issues with reference to block/CPP-R

Program, schedule, and status

- **General plan:** `docs/Plan.md`
- **Syllabus by phase/term:** `docs/Syllabus.md`
- **Public calendar:** `docs/Schedule.md`
- **Progress and metrics:** `docs/Progress.md`
- **Backlogs and reinforcements:** `docs/Backlogs.md`
--- 

### Repository Map & How to navigate it

```.
├─ TryOfCheckDogs/
│  ├─ docs/                   # Core plan documentation
│  │  ├─ opsec/               # Operational security and ethics
│  │  ├─ Opsec_Legal.md       # OPSEC and legal compliance guide
│  │  │  └─ Encrypted_Mission_Protocol.md # Definition of encrypted practices
│  │  ├─ teaching/ 
│  │  │  ├─ Metodo_Preparacion.md      # My teaching approach and hands-on method
│  │  │  └─ Guia_Practicas.md          # How to run exercises safely
│  │  ├─ Backlogs.md       # Pending tasks by phase
│  │  ├─ Plan.md           # Full plan (24 months, all phases)
│  │  ├─ Progress.md       # Monthly progress log
│  │  ├─ Schedule.md       # Detailed calendar by week/block
│  │  └─ Syllabus.md       # Thematic content (Phases 0–5)
│  ├─ certifications/      # Certifications obtained 
│  │  ├─ CCNA/ 
│  │  │  ├─ certificate.pdf         # Official certificate
│  │  │  ├─ verification_url.txt    # Cisco verification URL
│  │  │  └─ exam_date.txt           # Pass date
│  │  └─ MAD20/ ...
│  ├─ phases/
│  │  ├─ P0_Baseline/
│  │  │  ├─ 0B00_Linux_Power_User/ 
│  │  │  │  ├─ <Stack_DXX>/
│  │  │  │  │  ├─ cpp/ 
│  │  │  │  │  │  └─ CPP-R_<nombre>/
│  │  │  │  │  │     ├─ release/      # (generated at runtime)
│  │  │  │  │  │     ├─ cpp_run.sh    # One-command script (reproducibility)
│  │  │  │  │  │     ├─ manifest.json # Metadata (versions, hashes, metrics)
│  │  │  │  │  │     ├─ mission.tar.gz   # Packaged brief
│  │  │  │  │  │     ├─ mission.gpg      # Encrypted brief (if applicable)
│  │  │  │  │  │     ├─ README.md        # What it does, how to run it
│  │  │  │  │  │     └─ evidence/        # Audit
│  │  │  │  │  │        ├─ run.log       # Timestamps + commands
│  │  │  │  │  │        ├─ checksums.txt # SHA-256
│  │  │  │  │  │        └─ screenshots/  # Screenshots (if applicable)
│  │  │  │  │  └─ gdp/          # Guided Drills
│  │  │  │  │     ├─ assets/
│  │  │  │  │     ├─ scoring/
│  │  │  │  │     ├─ drills/
│  │  │  │  │     └─ README.md 
│  │  │  │  ├─ PAD/                  # Practical Aptitude Drill
│  │  │  │  │  ├─ challenge/
│  │  │  │  │  ├─ grader/
│  │  │  │  │  ├─ solution/
│  │  │  │  │  └─ README.decrypt.md  # (optional) GPG instructions
│  │  │  │  └─ README.md             # Block description
│  │  │  ├─ MJT*/    # MJT_T_YYYYMMDD / MJT_B_YYYYMMDD / MJT_Post_YYYYMMDD 
│  │  │  └─ 1B03.../
│  │  └─ P1_Eniac/...
│  ├─ bug_bounty/             # Bug Bounty reports
│  └─ ctf/ 
│     └─ Flare-on/...
├─ guide/                  # Quick guides
│  ├─ QUICKSTART.md        # How to start (first steps)
│  ├─ HOWTO_SETUP_LAB.md   # How to set up the lab
│  ├─ FAQ.md               # Frequently asked questions
│  └─ HOWTO_CPP_R.md       # How to create a CPP-R
│     └─ README.md         # Guide index
├─ .github/ 
│  └─ workflows/
│     ├─ validate_evidence.yml      # CI/CD: validate evidence
│     └─ verify_reproducibility.yml # CI/CD: verify reproducibility
├─ LICENSE                          # License (MIT or similar)
├─ .gitignore                       # Files to ignore
├─ GUIA_PARA_RECLUTADORES.md        # (RECRUITER_GUIDE)
├─ README.md                        # This document
└─ RESUMEN_EJECUTIVO.md             # Executive Summary (start here)
```
Current Status

| Metric              | Target                 | Completed  | %   |
| -------------------- | ---------------------- | ------------ | --- |
| **Phases**            | 5 (3 prep + 2 post)    | 0.5 started  | 10% |
| **Total blockss**  | 16                     | 0            | 0%  |
| **Total CPP-Rs**   | 20–26                  | 0            | 0%  |
| **Total PADs**     | 5                      | 0            | 0%  |
| **Certifications**  | 3 (CCNA, GFACT, MAD20) | 0            | 0%  |
| **Hours invested** | ~2,880 h               | 0            | 0%  |

Support & Contact
FAQ: guide/FAQ.md
Troubleshooting: guide/TROUBLESHOOTING.md
OPSEC protocol: docs/opsec/Opsec_Legal.md
Teaching method: docs/teaching/Metodo_Preparacion.md

Last update: 10-Oct-2025 | Start: 09-Oct-2025 | Target: Oct-2027 | Current phase: Phase 0, Block 0B00 (Linux Power User). ]
