# Reverse Engineering Learning Path — TOCD

Official repository of the TOCD plan (TryOfCheckDogs): a self-directed curriculum in Reverse Engineering and Malware Analysis. It contains phases, reproducible labs (**CPP-R**), drills (**GDP**), integrated missions (**PAD**), guides, and evidence. Anyone should be able to find a lab, run it with a script, and verify the evidence via hashes.

### Repository Map & How to navigate it

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
│  ├─ F1_Eniac/                # Fundamentals through an MA lens
│  │  ├─ 0B01/ … 7B01/         # Linux/Toolchain/Systems-C/ABI/ELF/PE/MA
│  │  │  ├─ <Stack_DXX>/
│  │  │  │  ├─ README.md
│  │  │  │  └─ cpp/
│  │  │  │     ├─ run.sh
│  │  │  │     └─ evidence/   # run.log, checksums.txt, manifest.json, screenshots
│  │  │  ├─ PAD/              # Block integrated mission
│  │  │  └─ MJT*/             # MJT_T_YYYYMMDD/MJT_B_YYYYMMDD/MJT_Post_YYYYMMDD
|  |  └─ 0B02/ ...
|  └─ F2/ ...
├─ .gitignore
└─ README.md                  # This document
```

### Conventions and naming

* **Blocks (F1–F3):** `XBYY` (e.g., `0B01`, `2B04`). X = block index (starting at 0); YY = nº of stacks when applicable.
* **F4:** `8A`, `8B`, `F4-B1 … F4-B5`, `9B`, `F4-CAP`.
* **F5:** `Pre-flight`, `F5-B1 … F5-B5`, `F5-CAP`.
* **Classes/Labs (inside a block):** one folder per stack.
* **Closures:** **CPP-R** in `cpp/run.sh` that generates `cpp/evidence/<YYYY-MM-DD_HHMMSS>/` with `run.log`, `checksums.txt`, `manifest.json`, and screenshots.
* **Block exams:** **PAD/**.
* **Scenarios:** **MJT\_T\_***, \*\*MJT\_B****, \*\*MJT\_Post***\*.

### Where everything is

### 1) Program, schedule, and status

* **General plan:** `docs/Plan.md`
* **Syllabus by phase/term:** `docs/Syllabus.md`
* **Public calendar:** `docs/Schedule.md`
* **Progress and metrics:** `docs/Progress.md`
* **Backlogs and reinforcements:** `docs/Backlogs.md`

### 2) Method, rules, and OPSEC

* **Class method and templates:** `docs/Teaching/Metodo_De_Clases.md`, `docs/Teaching/Preparacion_Entrenamiento.md`
* **OPSEC/Legal and “Encrypted Mission”:** `docs/Opsec/Opsec_Legal.md`, `docs/Opsec/Encrypted_Mission_Protocol.md`
* **Quick guides/HOWTOs:** `guide/Guide_for_recruiters.md`

### 3) Labs by phase and block

Useful shortcuts (conceptual globs):

* All labs in a phase: `phases/Fx_*/**/README.md`
* All **CPP-R** scripts: `phases/Fx_*/**/cpp/run.sh`
* All evidence: `phases/Fx_*/**/cpp/evidence/*/`
* All **PAD**: `phases/Fx_*/**/PAD/**`
* All **MJT**: `phases/Fx_*/**/MJT_*/**`

Examples:

* F1, Linux/CLI: `phases/F1_Eniac/0B01/…`
* F2, Loaders: `phases/F2_IBM1401/1B04/…`
* F3, Heap exploitation: `phases/F3_Intel4004/4B03/…`
* F4, Covert C2: `phases/F4_Univac1108/F4-B4/…`
* F5, Benign DXE: `phases/F5_YoneEvilHost/F5-B4/…`

### How to run a lab (standard procedure)

```
1. Enter the lab
   Go to `phases/<PHASE>/<BLOCK>/<Stack|DXX_TOPIC>/`
  
2. Check prerequisites
   Read `README.md` and the prior manifest if it exists.

3. Reproducible execution 
   `bash cpp/run.sh`  
   It must create `cpp/evidence/<TS>/run.log`, `checksums.txt`, `manifest.json`, and screenshots.
  
4. Verification 
   Check hashes or the verification instruction indicated in the README.
 
5. Submission 
   Commits with a clear message and links to the evidence.  
```

**Minimum expected output**

* Folder `cpp/evidence/<TS>/` with well-named logs and screenshots.
* `manifest.json` with versions, hashes, and limits/`VALIDSIG` when applicable.
* “Expected vs observed” notes in the README.

### Evidence discipline (mandatory)

* **One-command:** every **CPP-R** must re-execute without intervention.
* **Idempotence:** a second run does not break things or duplicate junk.
* **Manifest:** `{CPP_id, repo, commit/tag, tool_versions, limits}`.
* **Encryption:** sensitive briefs/resources travel signed and encrypted (GPG).
* **Without evidence it doesn’t exist:** closures without a complete package are not accepted.

### What’s in each phase (aligned summary)

* **F1\_Eniac:** Linux/CLI, Toolchain, Systems-C, x86\_64/ABI, ELF/PLT/GOT/LD\_PRELOAD, basic PE and safe MA triage.
* **F2\_IBM1401:** Applied reversing, 1-layer unpack, in-memory **loaders**, **manual mapping (intro)**, execution paths in userland, and mitigations.
* **F3\_Intel4004:** Process/memory internals, pedagogical exploitation (basic ROP → leak+ROP/JOP), heap PoCs, lab kernel R/W, and **capstone** userland→SYSTEM.
* **F4\_Univac1108:** Evasion (reduction and telemetry), reversible persistence, lab C2, covert operation, and **F4-CAP**.
* **F5\_YoneEvilHost:** Kernel observability and development (Linux/Windows), UEFI/OVMF, bootflow, reversible PoCs, and **F5-CAP** kernel+firmware.

### Quick support

* Structure or reproducibility: open an Issue prefixed with `[STRUCT]` or `[CPP-R]`.
* OPSEC/Legal and encryption questions: `docs/Opsec/`.
* Changes to syllabus/dates: `docs/Schedule.md` and `docs/Syllabus.md`.
