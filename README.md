# Reverse_Engineering_Learning_Path

Official repository of my learning path for TOCD (Try Of Check Dogs): self-paced curriculum in reverse engineering and malware development. phases, reproducible labs (PBR), drills (PAD), guides and evidence. The goal is for anyone to be able to find a lab, run it with a script, and verify evidence with hashes.

## **Repository Map & How to Navigate It**
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
## How to Find What You Need

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


# **How to Run a Lab (standard procedure)**
Inside each lab folder, the README.md explains the steps. The common pattern is:
```
# 1) Clone (or update) and enter the lab
git clone https://github.com/<your-user>/My_Learning_Path.git
cd My_Learning_Path/phases/F1_ENIAC/0B01/D14_FHS

# 2) Check dependencies and environment
bash tools/check_env.sh           # or the equivalent script inside the lab

# 3) Run the lab reproducibly
bash script/pbr_run.sh            # generates/collects evidence/ and outputs

# 4) Verify artifact integrity
sha256sum -c manifest.sha256      # optional if .sha256 is provided
# or open manifest.json and compare hashes
```
**Expected outputs:**
- evidence/ with labeled logs and screenshots

- manifest.json with hashes and environment metadata

- Brief “expected vs observed” notes in the lab’s README.md


## **Conventions & Evidence Discipline**

- Naming: DXX_TOPIC for each day/lab. Example: D14_FHS.

- Commits: F1-0B01-D14: evidence + manifest

- Do not commit samples or heavy binaries: include hashes and verifiable public sources only.

- Git LFS: use sparingly, only for specific images or PDFs if needed.

- Minimum reproducibility: every lab provides a bootstrap script and a manifest.json with versions and artifact hashes.


## **Automation (CI)**

- Validators in .github/workflows/ run on push/PR:

- Markdown and shell lint (markdownlint, shellcheck)

- Structure check: each DXX_* must include README.md, manifest.json, and evidence/

- Link checker for external links

If the pipeline fails, check the corresponding job log.
___

## **Issues, Backlog, and Releases**

- Backlog and sprints are tracked with Issues and Milestones per phase.

- Tags/Releases mark milestones (e.g., phase1-eniac-v1).

- If a pbr.tar.gz is distributed, publish it as a Release asset instead of committing it to the tree.


## **Security & Legal**

- This repository does not distribute malware or executable samples.

- All exercises are performed in isolated VMs as outlined in docs/opsec/.

- External contributions must respect LICENSE and SECURITY.md (if present).


## **Quick Support**

- For structure or reproducibility issues: open an Issue with the [PBR] or [TALK] prefix.

- For “Encrypted Mission” protocol questions: see docs/opsec/Encrypted_Mission_Protocol.md.

- Contact: open an Issue using the appropriate template.
 
