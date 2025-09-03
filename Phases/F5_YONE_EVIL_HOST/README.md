# F5_KernelUEFI — Placeholder (Not_Active_Yet)

> **Status:** PLANNED · **Start_Date:** 2029-08-01  
> **Planned_Windows (Phase_5):**  
> • **Q13:** 2029-08-01 → 2029-11-30  
> • **Q14:** 2029-12-01 → 2030-03-31

## Why_No_Content_Yet
This phase is **not active** yet. TOCD progresses phase_by_phase; future phases remain empty (or minimally scaffolded) until their study window opens. This avoids noise, broken links, and mismatched evidence.

## Scope_When_Active
Phase_5 focuses on **Kernel, Firmware & Boot** with reversible, educational PoCs:
- **B1 — Linux_Kernel (LKMs, kprobes/ftrace)**  
- **B2 — Windows_Kernel (WDM/WDF, IOCTL/IRP, Callbacks)**  
- **B3 — Rootkit_Style_PoCs (lab, reversible & detectable)**  
- **B4 — UEFI/OVMF (DXE) & Firmware_Analysis**  
- **B5 — Bootflow & Secure_Boot (comparative)**  
- **F5_CAP — Kernel+Firmware chain with technical defense**

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
