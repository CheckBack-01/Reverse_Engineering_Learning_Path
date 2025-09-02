
# Guide — Recruiter Overview (TOCD / My\_Learning\_Path)

**What this is**
Public repository for **TOCD — Try Of Check Dogs**, a self-paced path in **Reverse Engineering** and **Malware Development**. Work is performed **exclusively in isolated VMs**, with professional, reproducible evidence.

**Who should read this**
Recruiters and hiring managers who want a fast, high-signal overview of the repo’s scope, structure, deliverables, and how to verify them—without browsing the entire tree.


### 1) 30-second summary

* Multi-year curriculum using **PBR** (reproducible labs) + **PAD** (*Practical Aptitude Drill*, per-block mission).
* Progression from **F0 Cryptomath** → **F1 Fundamentals** → **F2 Reversing/Loaders** → **F3 Internals & Exploits** → **F4 Evasion/Persistence/C2** → **F5 Kernel/UEFI**.
* Each lab ships **instructions + manifest + evidence** that can be reproduced independently.
* **Ethics/OPSEC:** lab-only, benign payloads, no third-party targets.


### 2) How the repo is organized (top → down)

**Phase → Block → Day/Lab → PBR / PAD**

* **Phase (F0–F5):** macro-goals (F0 foundational math; F1 fundamentals; F2 reversing; F3 userland internals & exploitation; F4 evasion/persistence/C2; F5 kernel/UEFI).
* **Block (e.g., 0B01):** concrete theme inside a phase (e.g., Linux CLI/Bash Ecosystem).
* **Day/Lab (`DXX_TOPIC`):** self-contained unit with README, script, manifest and evidence.
* **PBR — Proof-of-Bounty-Readiness:** reproducible lab with clear objectives and artifacts.
* **PAD — Practical Aptitude Drill:** integrated mission per block; validates applied mastery (often in `PAD/` under the block).

**Typical navigation**

```
phases/F1_ENIAC/0B01/
├─ D14_FHS/              # lab (README, manifest.json, evidence/)
└─ PAD/                  # block-level aptitude drill
```

> The top-level README includes **“Repository Map & How to Navigate It.”** Use that section for quick paths and glob shortcuts.


### 3) Glossary (short, high-signal)

* **PBR:** reproducible lab with verifiable steps and outputs; includes `manifest.json` and evidence.
* **PAD:** integrated, multi-tech mission for a block; ships a brief and a concise debrief.
* **Encrypted Mission:** exercises delivered via encrypted instructions; decrypted and executed **only inside** the VM.
* **Capstone:** integrative exercise chaining multiple techniques with blue-team validation.
* **Evidence:** logs, screenshots, hashes, environment versions, and test results (no malware samples).
* **Backlog:** tracked via **Issues/Milestones** rather than folders.


### 4) Recommended reading order (big picture)

1. **F0 — Cryptomath:** base conversions, modular arithmetic, number-theory essentials.
2. **F1 — Fundamentals:** Linux/CLI, toolchain, C/ASM, ELF/linking.
3. **F2 — Applied Analysis:** static/dynamic reversing, basic unpack, **PE & in-memory loaders**, classic injection.
4. **F3 — Internals & Exploits:** PEB/TEB, memory regions, **ROP/JOP**, heap (Win/Linux).
5. **F4 — Evasion/Persistence/C2:** anti-analysis, dynamic resolution, **persistence** (Win/Linux/macOS), C2 profiling, **blue validation**.
6. **F5 — Kernel/UEFI:** LKMs/kprobes, benign Windows driver, **DXE** on OVMF, Secure Boot comparison.


### 5) What evidence you’ll find

* **Code** (C/C++/asm/scripts) and small PoCs where relevant.
* **Reproducible artifacts:** under each lab, `evidence/` with logs and screenshots, plus `manifest.json` with hashes and environment metadata.
* **PAD debriefs:** concise results, limits, and “how to reproduce.”


### 6) 3-minute verification checklist

1. Open the syllabus set in `docs/syllabus/`:

   * **Syllabus\_Summary.md**
   * **Public\_Schedule.md**
   * **Progression.md**
   * **Plan\_TryOfCheckDogs.md**
     *Naming note:* if the file currently appears as `Plan_TyrOfCheckDogs.md`, it refers to the same plan and will be normalized.
2. Navigate to a phase (e.g., `phases/F1_ENIAC/0B01/`) and open a **lab folder** (`DXX_TOPIC`).
3. Confirm presence of **README.md**, **manifest.json**, and **evidence/**.
4. In the README, locate the run script (`script/pbr_run.sh`) and the verification step (`sha256sum -c manifest.sha256` or compare `manifest.json`).
5. Optionally visit `PAD/` under the same block for the integrated mission and debrief.


### 7) Ethics & scope

* **Isolated VMs only**, benign payloads, no testing against third-party systems.
* From F4 onward, techniques are validated against a **blue panel** (e.g., Sysmon/ETW, YARA/Sigma, KQL) when applicable.
* The repo **does not distribute operational malware**; exercises are educational and reversible.


### 8) Key links (expected locations)

* **General plan:** `docs/syllabus/Plan_TryOfCheckDogs.md`
* **Syllabus summary:** `docs/syllabus/Syllabus_Summary.md`
* **Public schedule:** `docs/syllabus/Public_Schedule.md`
* **Progress & metrics:** `docs/syllabus/Progression.md`
* **OPSEC/Legal:** `docs/opsec/Opsec_Legal.md`
* **Encrypted Missions Protocol:** `docs/opsec/Encrypted_Mission_Protocol.md`
* **Repository map:** top-level `README.md` → “Repository Map & How to Navigate It”

> If any link is not yet live, it’s planned in `docs/` and will be populated as the path advances.


### 9) Contact

For a 15–20 minute guided tour of code and evidence, open an Issue with the tag **`demo-request`** or use the contact channel in the profile.

---

**Maintainer note (housekeeping):** keep `DXX_TOPIC` naming consistent, normalize `Plan_TryOfCheckDogs.md`, and ensure each lab includes `README.md`, `manifest.json`, and `evidence/` to pass CI checks.

