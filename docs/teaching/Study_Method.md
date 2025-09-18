# Study Method

**Purpose.** Transparently explain how I study and how I deliver/structure TOCD classes and practice. The objective is to achieve **professional competence** in Reverse Engineering/Malware Analysis with **reproducible** evidence.

---

### 1) Scope and principles

* **Hands-on first:** every topic ends with practice and evidence.
* **Reproducible or it doesn’t count:** **CPP-R** closures (one-command) with complete `evidence/`.
* **Ethics and OPSEC:** isolated laboratory (NAT VM), **benign** artifacts, no third parties.
* **Multiple sources:** courses, official documentation, TryHackMe, my own research, and **AI assistance** for practice verification and corrections.
* **Traceability:** README + manifest + logs per practice; commits with specific messages.

---

### 2) Study sources and materials

* **Courses:** Udemy (C/systems modules, reversing, PE/ELF, x64dbg/WinDbg).
* **Official documentation:** Linux, GNU, Microsoft, LLVM/Clang, GCC, Binutils, CMake, GDB/LDBG, glibc, etc.
* **Technical references:** recognized papers/blogs; benchmarks and manuals.
* **TryHackMe:** “Malware Analysis” path to practice safe triage and analysis methodologies (without exposing platform content).
* **AI (ChatGPT):** for creating challenging CPP, GDB, PAD, templates, and prose review; **not** to skip verification.

> **Golden rule:** **primary sources** prevail; AI only accelerates brainstorming. Everything is **validated** against official docs and laboratories.

---

### 3) Role of AI (what yes / what no)

**What yes:**

* Sketching **GDP** (guided drills) and (PAD, CPP-R).
* Suggesting **variants** of exercises.
* Generating checklists.

**What no:**

* Deciding architecture or technical claims without verification.
* Executing code or “considering a result valid” without **evidence**.
* Writing final deliverables and doing the **tests**.

**Safeguards:**

* Every snippet goes through **validation** (MRE, linters, minimal tests).
* **CPP-R** and evidence prevail: if it does not reproduce, it is **corrected or discarded**.

Brief variants:

* “AI assistance for drafts; manual and official verification for technical matters.”
* “AI as editorial support; **evidence** and **official docs** as the source of truth.”

---

### 4) Didactic structure (Composite Stack)

**Stack (SC) = extended class** with 1–3 compatible topics.

* **Day A:** theory + **GDP** per topic (drills with verification).
* **Day B:** timed re-drills + **combined drills** + symbols/FDs quiz.
* **Day C:** **interleaving** with the next topic + **CPP-R** of the stack (one-command).

**Practice types:**

* **GDP:** guided, short exercises with expected output.
* **CPP-R:** reproducible closure with `cpp/run.sh` that generates `cpp/evidence/<TS>/` (`run.log`, `checksums.txt`, `manifest.json`, screenshots).
* **PAD:** aptitude test per block (integrated mission, short debrief).
* **MJT:** mini job-style case with **lab-only** limits/ethics.

---

### 5) Workflow (step by step)

1. **Define the objective** (1 sentence, verifiable).
2. **Gather sources** (official docs, courses, TryHackMe) and set OPSEC boundaries.
3. **AI-assisted draft** of GDP/templates.
4. **Manual validation:** minimal MRE, syntax checks, and boundaries.
5. **Laboratory:** execute in VM, design **CPP-R**, and generate evidence.
6. **Review:** reproducibility checklist, idempotence, artifact hashing.
7. **Delivery:** README + manifest + evidence + (if applicable) **MJT**.
8. **Feedback:** if reproducibility fails ⇒ **Redo** and update `run.sh`.

---

### 6) Evidence and quality

* **Minimum package** (`cpp/evidence/<TS>/`): `run.log`, `checksums.txt`, `manifest.json`, screenshots (if applicable).
* **Idempotence:** running twice does not break; explicit preconditions.
* **Rubric:** A/B/C/Redo (A = clean VM, 1 command, complete evidence).
* **Clear commits:** `feat(cpp-r): close CPP-R-0B01-2 + evidence + debrief`.

---

### 7) Use of TryHackMe (Malware Analysis path)

* **Objective:** consolidate safe triage (strings/IOCs, YARA-lite, controlled logging).
* **Integration:** results are reflected in **CPP-R** of `6B01–7B01` (without publishing proprietary materials).
* **Policy:** **do not** copy platform content; document **my own process** and local reproducible evidence.

---

### 8) Ethics, scope, and limits

* **Lab-only**, **NAT**, no real persistence, no third-party targets.
* **Benign artifacts**; if they simulate “suspicious” signals, they are labeled and justified.
* **Encryption** by default for briefs/sensitive resources (GPG with `VALIDSIG`).

---

### 9) “Sources” section template in each block README

* **Official documentation:** (canonical links)
* **Courses/readings:** (author, module/topic)
* **TryHackMe:** (module/room)
* **AI assistance:** “drafts and editorial review; manual and official verification for technical matters.”

---

### 10) Glossary (quick)

* **GDP:** guided drills with immediate verification.
* **CPP-R:** reproducible closure with auditable evidence.
* **PAD:** integrated block mission (aptitude).
* **MJT:** mini job-style test (triage/judgment).
* **SC:** Composite Stack (Day A/B/C).
* **MRE:** minimal reproducible example.
* **OPSEC:** operational security of the laboratory.
