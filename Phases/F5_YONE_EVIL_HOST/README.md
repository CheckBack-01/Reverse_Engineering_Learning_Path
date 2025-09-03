# F4_Univac1108 — Placeholder (Not_Active_Yet)

> **Status:** PLANNED · **Start_Date:** 2028-08-01  
> **Planned_Windows (Phase_4):**  
> • **Q10:** 2028-08-01 → 2028-11-30  
> • **Q11:** 2028-12-01 → 2029-03-31  
> • **Q12:** 2029-04-01 → 2029-07-31

## Why_No_Content_Yet
This phase is **not active** yet. TOCD progresses phase_by_phase; future phases remain empty (or minimally scaffolded) until their study window opens. This avoids noise, broken links, and mismatched evidence.

## Scope_When_Active
Phase_4 focuses on **Evasion, Persistence, and C2** with a minimal Blue Track for validation. Expected modules/blocks include:
- **8A — Initial_Access_And_Covert_Delivery**  
- **8B — Minimal_Blue_Track** (Sysmon/ETW, YARA/Sigma, KQL)  
- **F4_B1/B2 — Evasion_I/II** (anti_analysis, direct_syscalls, module_stomping, etc.)  
- **9B — Implant_Crypto_And_Packer_v2** (AEAD, rotation, light mutation)  
- **F4_B3 — Cross_Platform_Persistence** (Win/Linux/macOS)  
- **F4_B4 — C2_And_Traffic_Profile** (realistic, measured)  
- **F4_B5 — Covert_Operations (lab)**  
- **F4_CAP — Integrated_Operation (96h)**

## What_To_Expect_In_This_Directory
Once active, this directory will include:
- `DXX_*` lab folders, each with **README.md**, **manifest.json**, and **evidence/**  
- A **script/** folder with runners (e.g., `pbr_run.sh`)  
- PAD missions and concise debriefs per block/module

## Repository_Conventions
- Technical paths in : `script/`, `evidence/`, `manifest.json`  
- Markdown headings in **Capitalized_Snake_Case**  
- No samples or large binaries; publish **hashes** and sources only

## CI_Note
Until activation, this directory is a **placeholder**. If required for CI, a temporary `manifest.json` may include `"placeholder": true`.

## OPSEC_Legal
Lab_only, benign artifacts, isolated VMs. See `docs/opsec/` for policy details.
