
# F0Cryptomath

### Rationale for Introducing a New Phase

I realized that **mathematics helps me understand binaries and cryptography far better**. A **self-directed, disciplined** study plan in mathematics, **combined** with university coursework
will provide the **knowledge and skills** needed to master these subjects. This is why **Phase 0** is being introduced: to establish, with a practical and reproducible focus, the mathematical concepts underpinning binaries, ciphers, and representation logic.

**Purpose.** Provide the **essential mathematical foundation** to:

* Understand binary structures and base conversion.
* Grasp and apply **modular arithmetic** central to cryptography.
* Get comfortable with the logic behind digital representations and ciphers.
* Reinforce the reasoning used in reversing, dataflow analysis, and data manipulation.

> Operational focus: each block ends with **PBR + PAD**, with minimal theory, guided drills, and **reproducible** practice in an **isolated VM**.

---

### Scope & Methodology

* **Codename:** F0 — Applied Cryptomath
* **Cadence:** **3–4 sessions/week (60–75 min each)**, non-daily micro-track
* **Estimated duration:** **\~6 weeks** (**in parallel with F1**)
* **Evaluation:** reproducible evidence and a brief defense
* **Method:** focused working session + default encryption (`gpg`) + **PBR/PAD**

---

### Phase Objectives (Outcomes)

* Practical command of **base conversions** (bin/dec/hex) and representation (**two’s complement**).
* Working knowledge of **modular arithmetic** (operations, inverses, practical Fermat).
* Useful **number theory** (primes, sieving, gcd/lcm) applied to cryptography.
* **Minimal linear algebra** to reason about block representations and a **lightweight Hill cipher**.
* Reproducible evidence: single `script/pbr_run.sh`, `evidence/` with logs, checksums, and manifest.

---

### Block Structure

Each block follows **Goal · Highlights · PBR · PAD** and ships encrypted evidence.

| Block    | Title                        | Stacks      | Focus                                            | Assessment                           |
| -------- | ---------------------------- | ----------- | ------------------------------------------------ | ------------------------------------ |
| **B0M1** | Numbers & Bases              | **0.1**     | Representation, powers of two, conversions       | Conversion/manipulation via scripts  |
| **B0M2** | Modularity & Cryptography    | **0.2**     | Modular ops, inverses, Fermat, quick checks      | `mod` scripts, modular key generator |
| **B0M3** | Matrices, Blocks & Ciphering | **0.4**     | Minimal linear algebra (Hill cipher lite)        | Encrypt/decrypt in Python            |
| **B0M4** | Global PAD — Cryptology Lite | **0.1–0.4** | Encrypted mission: binarize, modularize, encrypt | `mission.asc` + reproducible report  |

---

### **Stacks & Content**

### Stack 0.1 — Base Systems & Representation

* Positional representation and **binary value**.
* **Powers/exponents** (powers of two).
* **Conversions** across bases (2, 10, 16).
* **Two’s complement** and integer representation.

### Stack 0.2 — Modular Arithmetic

* Definitions: **modulus** and **congruence**; properties.
* Common cases: `mod p`, basic **modular inverses**.
* **Fermat’s little theorem** (operational use).
* Applications: hashing, padding, checksums.

### Stack 0.3 — Number Theory (Essentials)

* **Primes**: concept and quick detection.
* Sieving (Eratosthenes) and CLI tools (`factor`, `primes`).
* Factors, **gcd**, **lcm**.
* Applications: key generation, RSA (operational view), primality notes.

### Stack 0.4 — Minimal Linear Algebra

* **Vectors and matrices** (concepts and notation).
* Dot product; practical use in Python/NumPy.
* Application: image/byte-block representation and **Hill-lite** cipher.
* Notions of **permutations** and simple combinatorics.

---

### **Closeout Example (B0M1)**

**Goal.** Fluency in base conversion, binary representation, and shell-based scripting for conversions.

**Environment.** VM with `bc`, `xxd`, `python3`, `gpg`, clean snapshot.

**Minimal theory.**
Number systems (bin, hex, dec); why **two’s complement** matters; quick sanity checks for conversions.

**Command | Concept | Use**

| Command                                 | Concept               | Use                               |
| --------------------------------------- | --------------------- | --------------------------------- |
| `echo $((2#1101))`                      | Binary → decimal      | Converts `1101` to decimal (13)   |
| `printf "%x\n" 255`                     | Decimal → hexadecimal | Prints `ff`                       |
| `echo "ibase=16; obase=10; A+10" \| bc` | Hex → decimal (sum)   | `A + 10` (hex) → **26** (decimal) |
| `echo "obase=16; 26" \| bc`             | Decimal → hexadecimal | `26` → `1A`                       |
| `printf "%d\n" $((17 % 5))`             | Integer modulus       | Result `2`                        |
| `gpg --decrypt mission.asc`             | Mission decryption    | Decrypts the PAD mission          |

**PBR.** `script/pbr_run.sh` runs conversion tests and writes to `evidence/run.log` and `evidence/checksums.txt`.
**PAD.** Short write-up with reproducible examples and justification for each step.

---

### Deliverables per Block

* `script/pbr_run.sh` (one-command reproducible)
* `evidence/` with `run.log`, `checksums.txt`, `manifest.json`, screenshots
* `mission.asc` (GPG-encrypted mission)
* `README.md` (PAD defense and technical explanation)
* Scripts: `bin2dec.sh`, `modtool.py`, `hillcipher.py`, etc.
* Signed per-block tag/branch (e.g., `vF0-B0M1`)

---

### Success Criteria (Rubric)

|    Level | Criterion                                                         |
| -------: | ----------------------------------------------------------------- |
|    **A** | Complete evidence, **one-command reproducibility**, clear defense |
|    **B** | Reproducible with minor tweaks; partial but valid evidence        |
|    **C** | Partially runs; incomplete documentation or defense               |
| **Redo** | No reproducible evidence or fails on a clean VM                   |

---

### Prerequisites & Setup

* Isolated VM with a clean snapshot.
* Tools: `bash`, `bc`, `xxd`, `python3` (+ `venv`), `gpg`.
* Git with signing enabled (GPG or SSH) for evidence tags.
* Optional `make` to standardize `run`/`clean`.

---

### Workflow (per block)

1. **Plan:** read the block README; create a `venv` if applicable.
2. **Do:** run `script/pbr_run.sh` and complete the mission (`mission.asc`).
3. **Record:** store logs, checksums, and screenshots in `evidence/`.
4. **Defend:** write the **PAD** (what, how, why, and limits).
5. **Tag:** create a signed block tag and record the hash in the phase README.

---

### OPSEC/Legal Notes

* All work is **benign**, educational, and performed in **controlled lab environments**.
* Do not reuse encryption scripts outside the lab without review.
* Maintain snapshots and verify **rollback** before each block.

---

### Closing

Phase 0 **anchors** the mathematical fundamentals that let you understand binaries and cryptography without shortcuts. Run in parallel to the technical phases,
it raises comprehension and lowers friction once ROP, parsers, loaders, or any low-level analysis arrives. Reproducible, measurable, and defensible: exactly what you need to advance with confidence.
