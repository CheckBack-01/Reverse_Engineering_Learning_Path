### Practice Guide - Try Of Check Dogs (TOCD)

### Introduction: What are the practices in TOCD?

Each practice in TOCD is a **reproducible and verifiable** technical exercise that demonstrates competence in a specific skill. They are not theoretical exercises nor tasks to "turn in"; they are **technical artifacts** that anyone can run, verify, and audit.

**Core philosophy:**

* **If it isn't reproducible, it doesn't exist**
* **If it leaves no evidence, it doesn't count**
* **If it isn't encrypted (when applicable), it doesn't travel**

### 1) Types of practices: hierarchy and purpose

### **A) GDP (Guided Drills Protocol) - Guided practice**

**What is it?**
Short (15–30 min) and **guided** drills on a specific technique, with automatic verification.

**Purpose:**
Develop **fluency** in commands, tools, and concepts before integrating them into a complex project.

**Characteristics:**

* High guidance (step by step)
* Controlled dataset (synthetic or sanitized)
* Objective verification (script that validates output)
* Metric: accuracy ≥90%, target time

**Concrete example:**

```
GDP: Write 5 YARA rules to detect common packers
Dataset: 50 benign binaries + 50 packed
Verification: script computes FP/FN
Objective: FP ≤ 3%, FN ≤ 10%
Time: 30 minutes
```

**Frequency:** 3–5 drills per stack (Day A of the per-stack method)

---

### **B) CPP-R (Proof of Concept Reproducible) - Stack closure**

**What is it?**
**Unguided** test that integrates all the topics of the stack into a technical project executable with **a single command**.

**Purpose:**
Demonstrate the ability to **integrate techniques** and produce verifiable evidence without supervision.

**Characteristics:**

* Medium guidance (clear brief, no tutoring)
* Scope: all topics of the stack
* Reproducible: 1 command (`cpp_run.sh`)
* Idempotent: running twice yields the same result
* Complete evidence: logs, hashes, manifest, screenshots

**Concrete example:**

```
CPP-R: Unpack UPX-like binary and rebuild IAT
Input: packed_sample.bin
Output: unpacked_sample.bin + imports.json + evidence/
Verification: post_hash == expected_hash
Time limit: 2 hours
```

**Frequency:** 1 per stack (Day C of the per-stack method)

---

### **C) PAD (Practical Aptitude Drill) - Block-integrated mission**

**What is it?**
Evaluation that combines **several stacks within the same block** in a realistic scenario with minimal context.

**Purpose:**
Validate the ability to **apply multiple techniques** in a complex case without external guidance.

**Characteristics:**

* Zero guidance (only objectives and limits)
* Scope: all stacks of the block
* Mandatory technical report (1–2 pages)
* Independent verification (automatic grader)
* Time: 3–6 hours (depending on level)

**Concrete example:**

```
PAD: Analyze suspicious binary with sample corpus
Input: suspect.bin + corpus_mixed.zip
Objective:
  - Reproducible PE triage
  - ≥10 YARA rules (FP ≤ 3%, FN ≤ 10%)
  - Report with IOCs mapped to ATT&CK
Time: 4 hours
```

**Frequency:** 1 per block (end of block)

---

### **D) MJT (Mock Job Test) - Job simulation**

**What is it?**
Mini job test with **minimal context** that simulates a real work task.

**Purpose:**
Practice **triage, technical decision, and reporting** under work-like conditions.

**Characteristics:**

* Minimal guidance (brief with clear limits)
* Scope: 1–2 blocks
* Professional report (10–15 lines)
* Automatic grader + role metrics
* Time: 3–6 hours

**Concrete example:**

```
MJT: Malware triage + report for SOC
Context: "Binary reported by EDR, analysis time: 4h"
Deliverables:
  - Static/dynamic analysis
  - Extracted IOCs/IOAs
  - ATT&CK mapping
  - Mitigation recommendations
```

**Frequency:** bimonthly (per global schedule)

---

### 2) Standard structure of a CPP-R

**All my main projects follow this format.**

### **Directory tree:**

```
<stack>/CPP-R_<name>/
├── README.md                 # What it does, how to run it (5 min read)
├── cpp_run.sh               # 1-command script (reproducibility)
├── manifest.json            # Metadata (versions, hashes, metrics)
├── release/                 # (generated at runtime)
│   ├── mission.tar.gz       # Packaged brief
│   └── mission.gpg          # Encrypted brief (if applicable)
├── cpp/
│   ├── inputs/              # Inputs (datasets, binaries)
│   ├── outputs/             # Generated outputs
│   └── evidence/            # Execution evidence
│       ├── run.log          # Log with timestamps
│       ├── checksums.txt    # SHA-256 of outputs
│       └── screenshots/     # Screenshots (if applicable)
└── README.decrypt.md        # (optional) decryption instructions
```

---

### **Key components:**

#### **A) `README.md` - Cover letter**

**What it should contain (5 minutes to read):**

1. **Objective** (1–2 lines)

   * What problem the practice solves
   * Example: "Unpack a UPX-like binary and rebuild the IAT"

2. **Requirements**

   * Required tools (with versions)
   * Operating system (Linux/Windows/both)
   * Example: "Linux with `binutils`, `python3`, `yara` ≥4.0"

3. **How to reproduce** (exact commands)

   ```bash
   cd CPP-R_unpack/
   bash cpp_run.sh
   ```

4. **Inputs and outputs**

   * Inputs: `packed_sample.bin` (SHA-256: abc123...)
   * Outputs: `unpacked_sample.bin`, `imports.json`

5. **Key metrics**

   * Execution time: ~45s
   * Expected hash: `post_hash == def456...`

6. **Technical decisions**

   * Why I chose this technique
   * Limits of the analysis
   * Risks and mitigations

---

#### **B) `cpp_run.sh` - Reproducibility engine**

**Minimum contract:**

1. **Prechecks** (tools present, input hashes)

   ```bash
   command -v yara >/dev/null || { echo "Missing yara"; exit 1; }
   sha256sum -c cpp/inputs/hashes.txt
   ```

2. **Idempotency** (clean previous outputs)

   ```bash
   rm -rf cpp/outputs/*
   mkdir -p cpp/outputs cpp/evidence
   ```

3. **Main execution**

   ```bash
   # Your technical logic here
   python3 cpp/unpack.py cpp/inputs/packed_sample.bin \
     -o cpp/outputs/unpacked_sample.bin
   ```

4. **Evidence generation**

   ```bash
   # Logs with timestamps
   date -u +"%FT%TZ" > cpp/evidence/run.log

   # Output hashes
   sha256sum cpp/outputs/* > cpp/evidence/checksums.txt

   # Manifest
   jq -n --arg id "CPP-R_unpack" \
         --arg ts "$(date -u +"%FT%TZ")" \
         '{cpp_id:$id, run_ts_utc:$ts}' \
         > manifest.json
   ```

5. **Final validation**

   ```bash
   # Verify everything went well
   [[ -f cpp/outputs/unpacked_sample.bin ]] || { echo "Missing output"; exit 2; }
   echo "SUCCESS"
   ```

---

#### **C) `manifest.json` - Traceability**

**Minimum schema:**

```json
{
  "cpp_id": "CPP-R_0B04_unpack",
  "stack": "0B04 Applied Reversing I",
  "phase": "F2_IBM1401",
  "run_ts_utc": "2027-01-15T14:23:00Z",
  "host": {
    "os": "Ubuntu 22.04",
    "kernel": "5.15",
    "cpu": "x86_64"
  },
  "tooling": {
    "python": "3.10",
    "yara": "4.2.0",
    "binutils": "2.38"
  },
  "inputs": [
    {
      "path": "cpp/inputs/packed_sample.bin",
      "sha256": "abc123..."
    }
  ],
  "outputs": [
    {
      "path": "cpp/outputs/unpacked_sample.bin",
      "sha256": "def456..."
    }
  ],
  "metrics": {
    "runtime_s": 45.2,
    "success": true
  },
  "domain": "reversing",
  "sign": {
    "gpg_validsig": false
  }
}
```

**Domain extensions:**

* **YARA:** `metrics: {fp_rate, fn_rate, rules_count}`
* **Exploitation:** `metrics: {exploit_success, breakpoints_hit}`
* **Networking:** `metrics: {packets_captured, duration_s}`

---

#### **D) `cpp/evidence/` - Audit**

**Mandatory content:**

1. **`run.log`** - execution log

   ```
   2027-01-15T14:23:00Z [INFO] Starting unpack
   2027-01-15T14:23:05Z [INFO] OEP found at 0x401000
   2027-01-15T14:23:10Z [INFO] IAT reconstructed (42 imports)
   2027-01-15T14:23:45Z [SUCCESS] Unpack completed
   ```

2. **`checksums.txt`** - output integrity

   ```
   def456... cpp/outputs/unpacked_sample.bin
   789abc... cpp/outputs/imports.json
   ```

3. **`screenshots/`** (optional, if applicable)

   * Key process screenshots
   * Descriptive names (`01_oep_breakpoint.png`)

---

### 3) Encrypted Mission Protocol (EMP): encrypted practices

### **When is it used?**

**For PAD/MJT** or CPP-R with briefs that simulate **sensitive intelligence** (real operations context).

**Objectives:**

1. Simulate secure handling of critical data
2. Practice GPG in an operational workflow
3. Reinforce OPSEC discipline (do not expose briefs in cleartext)

---

### **Workflow:**

#### **Step 1: Creation (instructor/author)**

**File structure:**

```
plain/enunciado.md           # Brief in cleartext (DOES NOT GO TO THE REPO)
cpp/cpp_run.sh              # Encryption script
README.decrypt.md           # Decryption instructions
```

**Encryption script (`cpp/cpp_run.sh`):**

```bash
#!/usr/bin/env bash
set -euo pipefail

# Variables
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PLAIN="$ROOT/plain"
RELEASE="$ROOT/release"
EVID="$ROOT/cpp/evidence"

mkdir -p "$RELEASE" "$EVID"

# 1) Package brief
tar -czf "$RELEASE/mission.tar.gz" -C "$ROOT" plain/

# 2) Encrypt with GPG (passphrase from environment)
if [[ -z "${EMP_PASSPHRASE:-}" ]]; then
  echo "ERROR: EMP_PASSPHRASE missing"
  exit 1
fi

gpg --symmetric --cipher-algo AES256 --armor \
    --batch --yes --pinentry-mode loopback \
    --passphrase "$EMP_PASSPHRASE" \
    -o "$RELEASE/mission.gpg" \
    "$RELEASE/mission.tar.gz"

# 3) Generate evidence
date -u +"%FT%TZ" > "$EVID/run.log"
sha256sum "$PLAIN/enunciado.md" "$RELEASE/mission.tar.gz" \
  > "$EVID/checksums.txt"

# 4) Manifest
jq -n \
  --arg id "CPP-R_encrypted" \
  --arg ts "$(date -u +"%FT%TZ")" \
  '{
    cpp_id:$id,
    run_ts_utc:$ts,
    gpg:{algo:"AES256",armor:true},
    validsig:"pending"
  }' > "$ROOT/manifest.json"

echo "SUCCESS: mission.gpg created"
```

**Usage:**

```bash
export EMP_PASSPHRASE='my-secret-passphrase'
bash cpp/cpp_run.sh
```

**What goes to the repo:**

* `release/mission.gpg` [*]
* `manifest.json` [*]
* `README.decrypt.md` [*]
* `plain/enunciado.md` X (NO)

---

#### **Step 2: Decryption (student in VM)**

**Instructions (`README.decrypt.md`):**

````markdown
# Decryption of Encrypted Mission

## Requirements
- GPG installed
- Passphrase (provided separately)

## Procedure

1. Export the passphrase in your VM:
   ```bash
   export EMP_PASSPHRASE='your-passphrase-here'
````

2. Decrypt the file:

   ```bash
   gpg --decrypt --batch --yes --pinentry-mode loopback \
       --passphrase "$EMP_PASSPHRASE" \
       -o release/mission.tar.gz release/mission.gpg
   ```

3. Extract the content:

   ```bash
   tar -xzf release/mission.tar.gz
   ```

4. Verify integrity:

   ```bash
   sha256sum plain/enunciado.md release/mission.tar.gz
   # Compare with cpp/evidence/checksums.txt
   ```

5. Read the brief:

   ```bash
   cat plain/enunciado.md
   ```

## OPSEC

* **Never** commit `plain/` to the repo
* Store the passphrase outside the repo (password manager)
* Work only in a VM with NAT (no direct internet)
