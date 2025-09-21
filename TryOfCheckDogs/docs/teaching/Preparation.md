# Preparation and Training

> How practice forges real (non-theoretical) skills

### Purpose

This document explains, without fluff, how training is conducted in TOCD to develop operational Reverse Engineering/Malware Analysis skills and, progressively, Malware Developer skills in the laboratory. It describes the rationale for each practice, how the class is organized, and what evidence is required to demonstrate real competence.

### Training philosophy

* Learn by doing: 70–80% of the time in executable practice.
* Reproducibility before rhetoric: if it does not run with one command and does not leave evidence, it does not count.
* Lab-only and benign: isolated VMs, controlled artifacts, encrypted briefs; zero third parties.
* Transfer to real work: each closure produces an auditable evidence package.

### Curricular and class structure

* Phases → Blocks → Stacks (classes).
  Each block groups compatible stacks that are practiced separately and then combined.
* “Surgical” session (per stack):

  * Day A: essential theory + GDP per topic (guided drills).
  * Day B: timed re-drills + symbols/FDs quiz + combined drills.
  * Day C: interleaving with the next stack + CPP-R (reproducible closure).
* Minimum operational template per session:

  1. table: command | syntax | usage
  2. guided drills with verification
  3. “one-command” CPP-R with evidence
  4. closure with checklist and hashes

### The four core practices

### 1) GDP — Guided Drills Protocol

**What it is**
Short, verifiable guided exercises to fix a specific skill (syntax, flags, safe combinations).

**What it is for**
Gain immediate fluency; remove usage doubts; prepare the ground for reproducible closures and open-ended cases.

**How it forges the skill**
Deliberate repetition with objective feedback: each drill has known input, expected output, and a verification command.

**Minimum deliverables**
List of key commands and outputs; 2–4 line validation note.

**Typical duration**
10 to 20 minutes per set; 3–6 drills per topic.

---

### 2) CPP-R — Proof of Concept Reproducible

**What it is**
Reproducible closure of the stack or “composite stack,” executable with a single command that generates a standard evidence package.

**What it is for**
Turn skills into stable, portable, and auditable procedures. It bridges training and real work.

**How it forges the skill**
Forces declaration of preconditions, error handling, and recording versions/hashes. You learn to design, not just execute.

**Minimum deliverables (always)**
An idempotent `cpp/run.sh` that produces `cpp/evidence/` with:

* `run.log` with timestamps and key commands
* `checksums.txt` of outputs and scripts
* `manifest.json` with `tool_versions`, commit/tag, boundaries, and `VALIDSIG` if applicable
* 1–3 screenshots with useful names

**Acceptance criteria**
Reproduces in a clean VM with one command; complete evidence; stable results.

**Typical duration**
60–120 minutes.

---

### 3) PAD — Practical Aptitude Drill (per-block exam)

**What it is**
Block-integrated mission that combines several skills already consolidated in prior CPP-Rs.

**What it is for**
Demonstrate operational autonomy over the block as a whole. It validates that “everything together” works with judgment.

**How it forges the skill**
Integrates, prioritizes, and demands defensible decisions with clear boundaries (OPSEC). Assessed with an A/B/C/Redo rubric.

**Minimum deliverables**
Evidence package (CPP-R style) and brief technical defense (what, how, boundaries, verification).

**Typical duration**
90–150 minutes.

---

### 4) MJT — Mock Job Test (work-style scenarios)

**What it is**
Realistic case with minimal context; run on a scheduled basis (bimonthly or after a critical CPP-R).

**What it is for**
Practice triage, decision-making, and technical communication under constraints (no external network, no real persistence).

**How it forges the skill**
Simulates real pressure with strict limits. Refines your judgment and reveals fragilities in your closures.

**Minimum deliverables**
Reproducible evidence + 10–12-line mini-report (hypotheses, findings, boundaries, next steps).

**Typical duration**
45–120 minutes.

---

### How they connect day to day

1. Minimal enabling theory per topic.
2. GDP to fix the specific skill.
3. Combined drills to “stitch” the stack’s topics.
4. Stack CPP-R to consolidate process with evidence.
5. PAD at the end of the block to integrate everything.
6. Interspersed MJTs to exercise workplace judgment.

### Why this produces real skills

* Each skill is practiced in isolation and then combined, avoiding “mental zapping.”
* Reproducibility forces you to think about inputs, outputs, errors, and environment—just like in a real role.
* Evidence trains you in traceability: logs, hashes, manifests, screenshots. What cannot be verified is not useful.
* OPSEC boundaries build professional habits from day one.

### Evidence and reproducibility (mandatory discipline)

* “One-command” reproducibility in every CPP-R.
* Standardized evidence package by timestamp.
* Manifest with versions, hashes, and boundaries; sensitive briefs and resources encrypted (GPG).
* “Did not exist” policy: without evidence, the closure is not accepted.

### Evaluation rubric

* **A:** reproduces in a clean VM; complete evidence; stable results; clear defense.
* **B:** minor adjustments; sufficient evidence with small gaps.
* **C:** partial reproduction; incomplete or ambiguous evidence.
* **Redo:** does not reproduce or violates boundaries.

### Cadence and workload

* 5 h/day, Monday to Saturday.
* 70–80% practice (GDP, combined, CPP-R, PAD/MJT).
* Only the theory necessary to execute safely.

### Security and OPSEC (summary)

* VMs with NAT, snapshots, and proven rollback.
* Benign artifacts; no third parties; zero external traffic in final runs.
* Statements and sensitive resources travel encrypted; record `VALIDSIG` in the manifest.
* Without an evidence package, there is no credit.

### How to measure progress

* Counters of closed CPP-R, PAD, and MJT with links to evidence.
* MJT metrics: triage time, rate of validated hypotheses, evidence completeness.
* A/B/C/Redo ratio in recent closures.
* Light backlogs between phases to maintain technical muscle.

### Where the “Builder Track” fits

* From Phase 1, a Malware Analysis lens is introduced (safe triage).
* Phase 2 addresses loaders in userland with controlled memory.
* Phase 4 adds evasion, persistence, and lab C2.
* Phase 5 moves up to kernel/firmware with reversible, blue-aware PoCs.
  The entire “builder” is benign, reproducible, and measured by lab telemetry.

### Prohibited anti-patterns

* “Works on my machine” without evidence.
* Redirects that fail due to permissions and you do not verify them.
* Publishing statements/sensitive resources in the clear.
* Changing contexts/nomenclatures without justification and without updating manifests.

### Student checklist per stack

* Clear stack objective and boundaries.
* GDP completed with verification.
* Combined drills executed without shortcuts.
* “One-command” CPP-R with complete evidence.
* Notes on lessons learned and risks.
