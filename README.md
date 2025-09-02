# Reverse_Engineering_Learning_Path

Official repository of my learning path for TOCD (Try Of Check Dogs): self-paced curriculum in reverse engineering and malware development. phases, reproducible labs (PBR), drills (PAD), guides and evidence. The goal is for anyone to be able to find a lab, run it with a script, and verify evidence with hashes.

## Repository Map & How to Navigate It 
```

My_Learning_Path/
├─ docs/                      # Reading docs (not labs)
│  ├─ syllabus/               # Syllabus, public schedule, progression
│  │  ├─ Syllabus_Summary.md
│  │  ├─ Public_Schedule.md
│  │  └─ Progression.md
│  ├─ opsec/                  # OPSEC/Legal and “Encrypted Mission” protocols
│  │  ├─ Opsec_Legal.md
│  │  └─ Encrypted_Mission_Protocol.md
│  └─ guide/                  # Guides, class method, HOWTOs
│     └─ README.md
├─ phases/                    # Hands-on work by phase/block/day
│  ├─ F0_Cryptomath/
│  ├─ F1_ENIAC/
│  │  └─ 0B01/
│  │     └─ D14_FHS/
│  │        ├─ README.md      # lab instructions
│  │        ├─ manifest.json  # metadata + artifact hashes
│  │        └─ evidence/      # logs, screenshots, outputs (no samples)
│  ├─ F2_IBM1401/
│  └─ F3_Intel4004/ ...
├─ tools/                     # Reusable scripts (pbr_run.sh, check_env.sh)
├─ templates/                 # Lab README and manifest templates
├─ .github/                   # CI (markdownlint, shellcheck, validators)
│  └─ workflows/
├─ .gitignore
├─ .gitattributes
├─ LICENSE
└─ README.md                  # this document

```
### How to Find What You Need

#### 1) I need a specific lab

- Convention: phases/Fx_NAME/BLOCK/DXX_TOPIC/

- Example: phases/F1_ENIAC/0B01/D14_FHS/

**Shortcuts:**

- All labs in the repo: phases/**/D??_*

- All manifests: phases/**/D??_*/*manifest.json

- All run scripts: phases/**/D??_*/script*/pbr_run.sh or tools/pbr_run.sh

#### 2) I need the syllabus and dates

- docs/syllabus/Syllabus_Summary.md

- docs/syllabus/Public_Schedule.md

- Phase roadmap: docs/syllabus/Progression.md

#### 3) I need the method and rules

- docs/guide/README.md

- OPSEC and legal: docs/opsec/*

- “Encrypted Mission”: docs/opsec/Encrypted_Mission_Protocol.md
