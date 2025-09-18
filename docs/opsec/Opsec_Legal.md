# OPSEC & Legal — Policy and Playbook (TOCD)

**Owner:** Denis Yunior Pérez Medina • **Scope:** Entire TOCD repo (labs, docs, evidence, encrypted missions) • **Status:** v1.0 • **Last updated:** 2025-09-02

> **TL;DR**
>
> * **Lab-only.** VMs, benign payloads, snapshots, outbound-only NAT.
> * **Authorized programs only** (Bug Bounty, CTFs, or explicit lab consent).
> * Every block closes with **CPP + PAD** and **reproducible evidence**—without leaking secrets or third-party data.
> * **Encrypted Missions** deliver instructions only via GPG; nothing sensitive in plain text.
> * No operational malware, no real-world targeting, no persistence outside the lab.

---

### 1) Purpose & Scope

Define operational and legal rules for all **Reverse Engineering / Malware Development** work under **TOCD**, ensuring safety, legality, and reproducibility.

* Applies to: source code, scripts, binaries, evidence, documentation, and **Encrypted Missions**.
* Objective: **learn and demonstrate** techniques **in lab only**—**not** to run real campaigns.

---

### 2) Non-Negotiables

1. **Legality & consent:** only on assets you own or with **explicit authorization**.
2. **Isolation:** dedicated VMs with **no** routes to third-party networks or data.
3. **Benign payloads:** harmless, templated, reversible; **rollback guaranteed**.
4. **Reproducibility:** scripts, pinned versions, hashes, and environment notes for every run.
5. **Least privilege:** restrict access, secrets, and artifacts to the minimum necessary.

---

### 3) Allowed Technical Scope (Lab-Only)

* **Dedicated VMs** (Win/Linux/macOS) with **snapshots** per PBR/PAD.
* **Network:** outbound NAT; **no** exposed inbound ports.
* **Workloads:** didactic binaries; **lab** vulnerable drivers only.
* **Tooling:** debuggers, disassemblers, ETW/Sysmon, YARA/Sigma, KQL, etc.
* **Prohibited:** testing on third-party assets, real phishing, or handling real user data.

---

### 4) Engagement Rules (Bug Bounty / CTF)

* Only **authorized programs** and **in-scope windows** (re-check policy every time).
* **No PII exfiltration**; use **synthetic data**.
* Keep tests **minimally invasive**; stop at signs of instability.
* **Responsible Disclosure:**

  * Report with controlled, reproducible proofs.
  * **Never** publish sensitive data or active keys.
  * Follow the program’s disclosure timelines.

---

### 5) Data Classification & Handling

**Levels**

* **Public:** docs, neutral code, diagrams.
* **Internal:** lab evidence (logs, screenshots) **without secrets**.
* **Secret:** dummy creds, GPG keys, lab tokens → **do not** commit.

**Rules**

* Do not commit `secrets.*`, `*.key`, `*.pem`, `*.pfx`, `*.kdbx`, or dumps with tokens.
* Store evidence hashes in `SHA256SUMS.txt`; environment versions in `ENVINFO.md`.

---

### 6) Encryption & Signatures (Encrypted Missions Protocol)

* **Delivery:** materials and briefs **encrypted and signed** (GPG).
* **Decryption:** only inside the lab VM. Private keys **must not** leave the VM.
* **Verification:** record `VALIDSIG` and key fingerprints in `manifest.json`. If missing, **abort**.
* **Rejection policy:** when a valid signature is required but absent ⇒ **non-compliant**.

---

### 7) Secret Management

* **Never** commit tokens/keys. Use environment variables **only** inside the VM and outside snapshots.
* If a “dummy secret” is needed for teaching, generate at runtime and include its **hash** in evidence.
* Rotate and destroy secrets at the end of each mission (cleanup script if applicable).

---

### 8) MJT Policies (Mock Job Test)

* **Explicit limits:** no external network, no persistence, benign artifacts.
* **Process:** unguided triage, controlled static/dynamic analysis, minimal custom tooling where it adds value.
* **Evidence:** 10–12 line mini-report **plus** `evidence/<TS>/` package (same as CPP-R).
* **Post-CPP-R:** run **MJT-Post** to stress-test reproducibility and surface missing preconditions.

---

### 9) Anti-Patterns (Prohibited)

* “Works on my machine” without reproducible `evidence/`.
* Redirections with `sudo` that do not write (use `tee`).
* Using `uniq` without prior sort (inconsistent results).
* Publishing briefs/resources **in clear** when encryption is required.

---

### 10) Legal & Ethics

* Use of operational samples or tests against third-party systems **without authorization** is prohibited.
* All material is **didactic** and **reversible**. Any PoC must be **detectable** and have no impact outside the lab.
* Respect tool and dataset licenses; cite sources where appropriate.
* Comply with applicable local regulations on cybersecurity and privacy.

---

### 11) Version Control & Signatures

* Signed tagging per block recommended (`vF1-0B01`, etc.).
* Include `commit/tag` in `manifest.json`.
* Rejection policy: when required signatures are not valid ⇒ **non-compliant**.

---

### 12) Access Control, Roles, and Approvals

* **Roles:**

  * **Owner (this document):** maintains policy, approves exceptions.
  * **Contributor:** implements labs, produces evidence, follows OPSEC.
  * **Reviewer:** verifies reproducibility, signature checks, and scope compliance.

* **Access:**

  * Repo permissions follow least privilege (read by default; write on approval).
  * Secrets and keys scoped to the VM; sharing keys is prohibited.
  * **Change approvals:** any policy-impacting change requires one Reviewer approval.

---

### 13) Environment Baselines (VM & Network)

* **VM images:** golden images per OS, version-pinned; changes logged in `ENVINFO.md`.
* **Snapshots:** pre-CPP-R, pre-PAD, and pre-MJT checkpoints; post-run rollback **mandatory**.
* **Network controls:** outbound-only NAT; DNS points to lab resolver; **no** inbound port exposure.
* **Clock & entropy:** time sync enabled; deterministic seeds where applicable for stable runs.

---

### 14) Evidence & Reproducibility Standard

* **Minimum evidence package:**

  * `run.log` (timestamps + key commands)
  * `checksums.txt` (outputs + scripts)
  * `manifest.json` (tool\_versions, commit/tag, boundaries, `VALIDSIG`)
  * 1–3 screenshots with meaningful filenames
* **Acceptance criteria:**

  * **One-command** execution on a clean VM.
  * Idempotent reruns; no orphan files.
  * Documented preconditions and exact inputs.
* **Retention:** keep evidence for **12 months** post-block unless legal/contractual terms require longer.

---

### 15) Auditing, Reviews, and Retention

* **Per-block review:** OPSEC checklist + signature verification + reproducibility audit.
* **Quarterly audit:** spot-check 10% of closures; verify hashes and environment notes.
* **Retention policy:**

  * Public/docs indefinitely.
  * Internal evidence: 12 months.
  * Secrets/keys: rotate per mission; destroy on closure.

---

### 16) Incident Response (Lab-Only)

* **Triggers:** suspected key leak, unintentional outbound traffic, evidence with sensitive data, unstable PoC.
* **Immediate actions:**

  1. **Stop** the run; disconnect the VM network.
  2. Snapshot for forensics; export minimal logs.
  3. Rotate/destroy affected secrets.
  4. File an incident record in `docs/Opsec/IR-<YYYYMMDD>.md`.
* **Postmortem:** within 72 hours—root cause, corrective actions, policy updates if needed.

---

### 17) Licensing & Attribution

* Track third-party licenses in `THIRD_PARTY_NOTICES.md`.
* Keep SPDX headers where supported; include license texts when required.
* Cite references in READMEs (papers, blogs, docs).

---

### 18) Training & Awareness

* **Onboarding:** read this policy, pass a short OPSEC quiz, import GPG keys in a lab VM.
* **Annual refresh:** re-acknowledge policy; re-verify signing and encryption workflow.
* **Drills:** quarterly Encrypted Mission dry-runs (sign, encrypt, verify `VALIDSIG`).

---

### 19) Enforcement & Consequences

* **Non-compliance** outcomes (progress/academic context):

  * **No credit** for the closure (treated as **Redo**).
  * Temporary freeze on repo write access for repeated violations.
  * Mandatory remediation (policy re-read + quiz).
* **Appeals:** submit a written rationale; Owner + Reviewer decide within 7 days.

---

### 20) Change Management

* Changes to this policy follow **signed PRs** with a CHANGELOG entry.
* Bump minor version for clarifications; major version for scope/process changes.
* Effective date recorded in the header; older versions archived in `docs/Opsec/versions/`.

---

### 21) Glossary (Quick)

* **CPP-R:** reproducible closure with auditable evidence.
* **PAD:** block-integrated mission with brief defense.
* **MJT:** mock job test (triage/decision-making).
* **VALIDSIG:** GPG verification token recorded in `manifest.json`.
* **PBR:** pre-block review (OPSEC + environment).
* **Lab-only:** activity confined to isolated VMs with outbound NAT.

---

### 22) Checklists (Appendices)

**A) OPSEC Pre-Flight**

* [ ] VM snapshot taken
* [ ] Outbound-only NAT confirmed; no inbound rules
* [ ] Secrets mounted via env vars (not committed)
* [ ] Inputs/datasets are benign and documented
* [ ] GPG keys present; `gpg --list-keys` verified

**B) CPP-R Closure**

* [ ] `bash cpp/run.sh` executes once, cleanly
* [ ] `run.log`, `checksums.txt`, `manifest.json`, screenshots produced
* [ ] Idempotent rerun; no duplicate artifacts
* [ ] Hashes match `SHA256SUMS.txt`
* [ ] README documents preconditions & verification

**C) Encrypted Mission**

* [ ] Brief received **encrypted + signed**
* [ ] Decrypted **inside** lab VM only
* [ ] `VALIDSIG` + fingerprint recorded in `manifest.json`
* [ ] Secrets rotated/destroyed on closure
* [ ] Evidence excludes plaintext secrets

---

### 23) Templates

**`manifest.json` (skeleton)**

```json
{
  "cpp_id": "CPP-R-<block-id>",
  "repo": "TryOfCheckDogs",
  "commit": "<sha>",
  "tag": "vF<X>-<block>",
  "tool_versions": {
    "os": "Ubuntu 22.04",
    "gcc": "13.2.0",
    "clang": "17.0.0",
    "cmake": "3.28",
    "gdb": "14.2",
    "ghidra": "11.0"
  },
  "limits": {
    "network": "NAT outbound-only",
    "persistence": "none",
    "third_party": "prohibited"
  },
  "gpg": {
    "VALIDSIG": "<token>",
    "fingerprint": "<KEYID>"
  },
  "evidence": {
    "ts": "<YYYY-MM-DD_HHMMSS>",
    "paths": ["cpp/evidence/<TS>/run.log", "cpp/evidence/<TS>/checksums.txt"]
  }
}
```

**`ENVINFO.md` (skeleton)**

```
OS: <name / version>
Kernel: <version>
Hypervisor: <VirtualBox|VMware|QEMU/KVM> <version>
Toolchain: gcc <v>, clang <v>, cmake <v>, gdb <v>
Windows SDK/WDK: <v> (if applicable)
Ghidra/rizin/x64dbg/WinDbg: <v>
Notes: <deviations from baseline, if any>
```

---

**End of Policy**
