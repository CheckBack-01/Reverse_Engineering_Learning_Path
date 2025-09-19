# Quick Guide for Recruiters — TOCD

**What it is**
Personal track (“TOCD — Try Of Check Dogs”) for Reverse Engineering / Malware Analysis with reproducible practices and verifiable evidence. I work only in isolated VMs, with benign artifacts and a focus on evidence discipline.

**Who should read it**
Recruiters and hiring managers who need a clear view of scope, structure, deliverables, and how to verify results without traversing the entire repository.

---

### 1) 30-second summary

Current methodology: GDP (guided drills), CPP-R (reproducible closures), PAD (block aptitude test), and MJT (mini job-style test).
Active phase (9 months): F1 — ENIAC with a Malware Analysis lens (Linux/CLI, toolchain, Systems-C, x86\_64/ABI/ASM, ELF/LD\_PRELOAD, PE Fundamentals, and Safe Triage & IOCs).
Each lab ships a README + manifest + evidence and can be re-executed with a single command.
OPSEC/Legal: no third parties, no operational samples; everything is didactic and reversible.

---

### 2) Repository structure

```
TryOfCheckDogs/
├─ docs/
│  ├─ Opsec/
│  │  ├─ Opsec_Legal.md
│  │  └─ Encrypted_Mission_Protocol.md
│  ├─ Teaching/
│  │  ├─ Metodo_De_Clases.md
│  │  └─ Preparacion_Entrenamiento.md
│  ├─ Backlogs.md
│  ├─ Plan.md
│  ├─ Progress.md
│  ├─ Schedule.md
│  └─ Syllabus.md
├─ guide/
│  └─ README.md                # Quick guide, HOWTOs
├─ phases/
│  ├─ F1_Eniac/                # Fundamentals with an MA lens
│  │  ├─ 0B01/ … 7B01/         # Linux/Toolchain/Systems-C/ABI/ELF/PE/MA
│  │  │  ├─ <Stack_DXX>/
│  │  │  │  ├─ README.md
│  │  │  │  └─ cpp/
│  │  │  │     ├─ run.sh
│  │  │  │     └─ evidence/   # run.log, checksums.txt, manifest.json, screenshots
│  │  │  ├─ PAD/              # Block-integrated mission
│  │  │  └─ MJT*/             # MJT_T_YYYYMMDD/MJT_B_YYYYMMDD/MJT_Post_YYYYMMDD
|  |  └─ 1B02...
|  └─ F2 ...
└─ Repository_Map.md          # This document
```

**Nomenclature:** Phase → Block (0B01) → Stack (Day A/B/C).

---

### 3) What you will find in each lab

* `CPP-R/cpp/run.sh`: executes everything and generates evidence.
* `CPP-R/cpp/evidence/`: `run.log`, `checksums.txt`, `manifest.json` (tools, hashes, boundaries), screenshots if applicable.
* `README.md` (of the block): verifiable objective, prerequisites, how to re-run, acceptance criteria.
* **Drills:** guided exercises with brief verification (GDP).
* **PAD:** block-integrated mission with a short mini-report (10–12 lines).

---

### 4) Two-minute verification (checklist)

Open `Phases/F1_Eniac/0B01/README.md` and locate prerequisites and the execution command.

Review `Phases/F1_Eniac/0B01/CPP-R/manifest.json` (hashes, versions, boundaries).

Run on a test VM:

```bash
cd Phases/F1_Eniac/0B01/CPP-R/cpp && bash run.sh
```

Check that `CPP-R/cpp/evidence/` was created with: `run.log`, `checksums.txt`, `manifest.json`.

If you want applied judgment, open `Phases/F1_Eniac/0B01/PAD/` and read the debrief.

**Expected result:** identical evidence package on each execution. If evidence is missing or the script is not idempotent, it does not pass.

---

### 5) Minimal definitions

* **GDP (Guided Drills Protocol):** guided, verifiable exercises per topic.
* **CPP-R (Proof of Concept Reproducible):** one-command closure with evidence.
* **PAD (Practical Aptitude Drill):** block-integrated mission with a short defense.
* **MJT (Mock Job Test):** mini job-style case with minimal context and strict boundaries.

---

### 6) Key F1 outcomes (9 months)

* 8–12 closed CPP-R with evidence and idempotent runners.
* Low-level C utilities (hexdump/binary viewer, controlled hooks with LD\_PRELOAD).
* PE triage mini-report (hashes, sections, imports, IOCs) on benign artifacts.
* Evidence and OPSEC discipline across all blocks (0B01…7B01).

---

### 7) Ethics and scope

Lab-only, NAT, benign artifacts, and encrypted missions where applicable.
No external networks, no real persistence, no third-party targets.
Evasion demonstrations are treated as measurable experiments to strengthen defenses.

---

### 8) Where to look first

* Phase map: `Phases/F1_Eniac/README.md`
* Active blocks: `Phases/F1_Eniac/0B01/ … 7B01/`
* Plan and schedule: `docs/syllabus/` → `Syllabus.md`, `Schedule.md`, `Progression.md`, `Plan.md`
* OPSEC/Legal: `docs/opsec/`

---

### 9) Contact

For a 15–20 minute review of code and evidence, open an Issue with the label `demo-request` or use the contact channel in the profile.

**checkabck, Denis Yunior Pérez Medina**
