### Schedule - Try Of Check Dogs (TOCD)

* **Total coverage:** 9-oct-2025 → 31-mar-2030
* **Preparation (24 months):** 9-oct-2025 → 30-sep-2027
* **Post-employment (18 months):** oct-2027 → mar-2030
* **Cadence:** ~30 h/week (5 h/day, Mon–Sat)

**Methodology:** **CPP-R** (reproducible closures) + **PAD** (block mission) + **GDP** (guided drills) · **Lab-only** (OPSEC/Legal)

### Quick view by Phase (durations and deliverables)

| Phase                      | Start           | End         | Duration   | Key deliverables                  |
| -------------------------- | --------------- | ----------- | ---------- | --------------------------------- |
| **Phase 0 — Baseline**     | 9-oct-2025      | 31-ene-2026 | 16 weeks   | 4 CPP-Rs + **CCNA**               |
| **Phase 1 — Eniac**        | 1-feb-2026      | 31-may-2026 | 17 weeks   | 6–8 CPP-Rs + 2 PADs               |
| **Maturation gap**         | 1-jun-2026      | 30-nov-2026 | 6 months   | **MAD20** + **GFACT** + 10–12 BB  |
| **Phase 2 — IBM 1401**     | 1-dic-2026      | 31-may-2027 | 6 months   | 6–8 CPP-Rs + 2 PADs               |
| **Phase 3 — Intel 4004**   | 1-jun-2027      | 30-sep-2027 | 4 months   | 4–6 CPP-Rs + 1 PAD + Capstone     |
| **Applications**           | oct-2027        | —           | —          | Complete portfolio + applications |
| **Phase 4 — Univac 1108**  | Post-employment | —           | ~12 months | 8–12 CPP-Rs + Capstone F4         |
| **Phase 5 — YoneEvilHost** | Post-employment | —           | ~6 months  | 6–10 CPP-Rs + Capstone F5         |

---

### Phase 0 - Baseline (9-oct-2025 → 31-ene-2026)

**Objective:** operational competence in Linux, Windows, networking, and scripting before entering TOCD.

### **0B00 - Linux Power User (6 weeks)**

**9-oct-2025 → 19-nov-2025**

| Week | Start date | End date | Stack/Topic                | Deliverable    | Due date |
| ---- | ---------- | -------- | -------------------------- | -------------- | -------- |
| 1    | 9-oct      | 15-oct   | Advanced CLI + permissions | GDP            | 15-oct   |
| 2    | 16-oct     | 22-oct   | Processes + systemd        | GDP            | 22-oct   |
| 3    | 23-oct     | 29-oct   | Basic networking           | GDP            | 29-oct   |
| 4    | 30-oct     | 5-nov    | Bash scripting I           | GDP            | 5-nov    |
| 5    | 6-nov      | 12-nov   | Bash scripting II          | GDP            | 12-nov   |
| 6    | 13-nov     | 19-nov   | Integration                | **CPP-R-0B00** | 19-nov   |

**PAD-0B00:** 20-nov-2025 (task orchestrator with logging and rollback)

### **0B01 - Networking Essentials (6 weeks)**

**20-nov-2025 → 31-dic-2025**

| Week | Start date | End date | Stack/Topic          | Deliverable               | Due date |
| ---- | ---------- | -------- | -------------------- | ------------------------- | -------- |
| 7    | 20-nov     | 26-nov   | TCP/IP + subnetting  | GDP                       | 26-nov   |
| 8    | 27-nov     | 3-dic    | Routing + DNS        | GDP                       | 3-dic    |
| 9    | 4-dic      | 10-dic   | Advanced Wireshark   | GDP                       | 10-dic   |
| 10   | 11-dic     | 17-dic   | iptables + firewalls | GDP                       | 17-dic   |
| 11   | 18-dic     | 24-dic   | CCNA prep I          | GDP                       | 24-dic   |
| 12   | 25-dic     | 31-dic   | CCNA prep II + exam  | **CPP-R-0B01** + **CCNA** | 31-dic   |

### **0B02 - Python for Security (4 weeks)**

**1-ene-2026 → 28-ene-2026**

| Week | Start date | End date | Stack/Topic                 | Deliverable          | Due date |
| ---- | ---------- | -------- | --------------------------- | -------------------- | -------- |
| 13   | 1-ene      | 7-ene    | Python syntax + structures  | GDP + CTF            | 7-ene    |
| 14   | 8-ene      | 14-ene   | Libraries (requests, scapy) | GDP + CTF            | 14-ene   |
| 15   | 15-ene     | 21-ene   | Network programming         | GDP + CTF            | 21-ene   |
| 16   | 22-ene     | 28-ene   | Integration                 | **CPP-R-0B02** + CTF | 28-ene   |

**Note:** CTFs start from 0B02 (2–3/week on HackTheBox/TryHackMe)

### **0B03 - Windows Administration (4 weeks)**

**29-ene-2026 → 25-feb-2026**

| Week | Start date | End date | Stack/Topic         | Deliverable          | Due date |
| ---- | ---------- | -------- | ------------------- | -------------------- | -------- |
| 17   | 29-ene     | 4-feb    | PowerShell basics   | GDP + CTF            | 4-feb    |
| 18   | 5-feb      | 11-feb   | Registry + services | GDP + CTF            | 11-feb   |
| 19   | 12-feb     | 18-feb   | Event logs + Sysmon | GDP + CTF            | 18-feb   |
| 20   | 19-feb     | 25-feb   | Integration         | **CPP-R-0B03** + CTF | 25-feb   |

**Phase 0 completed:** 25-feb-2026 (adjusted to make room for Phase 1)

---

### Phase 1 - Eniac (1-feb-2026 → 31-may-2026)

**Objective:** fundamentals with a Malware Analysis lens.

### **2B01–3B01 - Systems-C I (8 weeks)**

**1-feb-2026 → 28-mar-2026**

| Week | Start date | End date | Stack/Topic             | Deliverable                           | Due date |
| ---- | ---------- | -------- | ----------------------- | ------------------------------------- | -------- |
| 1    | 1-feb      | 7-feb    | Pointers + memory       | GDP + CTF                             | 7-feb    |
| 2    | 8-feb      | 14-feb   | Structs + malloc/free   | GDP + CTF                             | 14-feb   |
| 3    | 15-feb     | 21-feb   | Low-level I/O           | GDP + CTF                             | 21-feb   |
| 4    | 22-feb     | 28-feb   | mmap + buffers          | **CPP-R-2B01-1** (hexdump) + CTF      | 28-feb   |
| 5    | 1-mar      | 7-mar    | Safe binary parsing     | GDP + CTF                             | 7-mar    |
| 6    | 8-mar      | 14-mar   | Basic sockets           | GDP + CTF                             | 14-mar   |
| 7    | 15-mar     | 21-mar   | Testing + light fuzzing | **CPP-R-2B01-2** (safe-strings) + CTF | 21-mar   |
| 8    | 22-mar     | 28-mar   | Integration             | **CPP-R-2B01-3** (parser) + CTF       | 28-mar   |

**PAD-2B01:** 29-mar-2026 (Systems-C block)

### **4B01 - x86_64/ABI/ASM (3 weeks)**

**29-mar-2026 → 18-abr-2026**

| Week | Start date | End date | Stack/Topic      | Deliverable                            | Due date |
| ---- | ---------- | -------- | ---------------- | -------------------------------------- | -------- |
| 9    | 29-mar     | 4-abr    | SysV ABI + stack | GDP + CTF                              | 4-abr    |
| 10   | 5-abr      | 11-abr   | Syscalls + C↔asm | **CPP-R-4B01-1** (wrappers) + CTF      | 11-abr   |
| 11   | 12-abr     | 18-abr   | asm routines     | **CPP-R-4B01-2** (memset/memcmp) + CTF | 18-abr   |

### **5B01 - Linking/ELF/PLT/GOT (3 weeks)**

**19-abr-2026 → 9-may-2026**

| Week | Start date | End date | Stack/Topic           | Deliverable                              | Due date |
| ---- | ---------- | -------- | --------------------- | ---------------------------------------- | -------- |
| 12   | 19-abr     | 25-abr   | ELF + dynamic linking | GDP + CTF                                | 25-abr   |
| 13   | 26-abr     | 2-may    | PLT/GOT + LD_PRELOAD  | **CPP-R-5B01-1** (ELF parser) + CTF      | 2-may    |
| 14   | 3-may      | 9-may    | Userland hooks        | **CPP-R-5B01-2** (hook open/fopen) + CTF | 9-may    |

### **6B01 - Windows & PE Fundamentals (2 weeks)**

**10-may-2026 → 23-may-2026**

| Week | Start date | End date | Stack/Topic                 | Deliverable                      | Due date |
| ---- | ---------- | -------- | --------------------------- | -------------------------------- | -------- |
| 15   | 10-may     | 16-may   | PE layout + imports/exports | GDP + CTF                        | 16-may   |
| 16   | 17-may     | 23-may   | PE triage                   | **CPP-R-6B01** (PE report) + CTF | 23-may   |

### **7B01 - Intro to Malware Analysis (1 week)**

**24-may-2026 → 31-may-2026**

| Week | Start date | End date | Stack/Topic               | Deliverable                             | Due date |
| ---- | ---------- | -------- | ------------------------- | --------------------------------------- | -------- |
| 17   | 24-may     | 31-may   | IOCs + YARA-lite + triage | **CPP-R-7B01** (strings→YARA→CSV) + CTF | 31-may   |

**PAD-7B01:** 31-may-2026 (MA block)

---

### Maturation Gap (1-jun-2026 → 30-nov-2026)

**Objective:** portfolio, certifications, real practice.

### **Portfolio preparation (jun–jul 2026)**

**1-jun-2026 → 31-jul-2026**

| Month | Primary activity            | Hours/day | Secondary activity  | Hours/day | Deliverables            |
| ----- | --------------------------- | --------- | ------------------- | --------- | ----------------------- |
| Jun   | Polish existing CPP-Rs      | 2.5       | Reporting templates | 2.5       | Clean repos + templates |
| Jul   | Selection of BB/CTF targets | 2.5       | Tooling setup       | 2.5       | Targets list + tooling  |

### **MAD20 + Bug Bounty/CTFs (ago–sep 2026)**

**1-ago-2026 → 30-sep-2026**

| Month | Primary activity        | Hours/day | Secondary activity | Hours/day | Deliverables                                       |
| ----- | ----------------------- | --------- | ------------------ | --------- | -------------------------------------------------- |
| Aug   | **MAD20 Basic**         | 2.5       | Bug Bounty/CTFs    | 2.5       | MAD20 modules + 3–4 BB submissions                 |
| Sep   | **MAD20 Basic** (close) | 2.5       | Bug Bounty/CTFs    | 2.5       | **MAD20 badges** + 6–8 BB submissions (cumulative) |

### **GFACT + Bug Bounty/CTFs (oct–nov 2026)**

**1-oct-2026 → 30-nov-2026**

| Month | Primary activity               | Hours/day | Secondary activity | Hours/day | Deliverables                                            |
| ----- | ------------------------------ | --------- | ------------------ | --------- | ------------------------------------------------------- |
| Oct   | **GFACT prep**                 | 3.0       | Bug Bounty/CTFs    | 2.0       | Study material + 9–10 BB submissions (cumulative)       |
| Nov   | **GFACT exam** + consolidation | 3.0       | Bug Bounty/CTFs    | 2.0       | **GFACT certified** + 10–12 BB submissions (cumulative) |

---

### Phase 2 - IBM 1401 (1-dic-2026 → 31-may-2027)

**Objective:** Applied Reversing & Userland Execution.

### **0B04 - Applied Reversing I (6 weeks)**

**1-dic-2026 → 11-ene-2027**

| Week | Start date | End date | Stack/Topic             | Deliverable                            | Due date |
| ---- | ---------- | -------- | ----------------------- | -------------------------------------- | -------- |
| 1    | 1-dic      | 7-dic    | Static (strings/CFG)    | GDP + CTF                              | 7-dic    |
| 2    | 8-dic      | 14-dic   | Dynamic (x64dbg/WinDbg) | GDP + CTF                              | 14-dic   |
| 3    | 15-dic     | 21-dic   | Basic anti-analysis     | GDP + CTF                              | 21-dic   |
| 4    | 22-dic     | 28-dic   | 1-layer unpack          | **CPP-R-0B04-1** (unpack) + CTF        | 28-dic   |
| 5    | 29-dic     | 4-ene    | Minimal IAT             | GDP + CTF                              | 4-ene    |
| 6    | 5-ene      | 11-ene   | Integration             | **CPP-R-0B04-2** (benign loader) + CTF | 11-ene   |

### **1B04 - Deep PE & In-Memory Loaders (6 weeks)**

**12-ene-2027 → 22-feb-2027**

| Week | Start date | End date | Stack/Topic               | Deliverable                             | Due date |
| ---- | ---------- | -------- | ------------------------- | --------------------------------------- | -------- |
| 7    | 12-ene     | 18-ene   | PE in practice            | GDP + CTF                               | 18-ene   |
| 8    | 19-ene     | 25-ene   | In-memory loaders         | GDP + CTF                               | 25-ene   |
| 9    | 26-ene     | 1-feb    | Manual mapping (intro)    | **CPP-R-1B04-1** (PE parser) + CTF      | 1-feb    |
| 10   | 2-feb      | 8-feb    | Manual mapping (advanced) | GDP + CTF                               | 8-feb    |
| 11   | 9-feb      | 15-feb   | Stability + debugging     | GDP + CTF                               | 15-feb   |
| 12   | 16-feb     | 22-feb   | Integration               | **CPP-R-1B04-2** (manual map DLL) + CTF | 22-feb   |

**PAD-1B04:** 23-feb-2027 (PE/Loaders block)

### **2B04 - Userland Execution & Mitigations (10 weeks)**

**23-feb-2027 → 31-may-2027**

| Week | Start date | End date | Stack/Topic                  | Deliverable                            | Due date |
| ---- | ---------- | -------- | ---------------------------- | -------------------------------------- | -------- |
| 13   | 23-feb     | 1-mar    | CRT+LoadLibrary              | GDP + CTF                              | 1-mar    |
| 14   | 2-mar      | 8-mar    | APC queueing                 | **CPP-R-2B04-1** (CRT+LL mode) + CTF   | 8-mar    |
| 15   | 9-mar      | 15-mar   | Process hollowing (intro)    | GDP + CTF                              | 15-mar   |
| 16   | 16-mar     | 22-mar   | Process hollowing (advanced) | **CPP-R-2B04-2** (APC mode) + CTF      | 22-mar   |
| 17   | 23-mar     | 29-mar   | Module stomping              | GDP + CTF                              | 29-mar   |
| 18   | 30-mar     | 5-abr    | PPID spoofing                | GDP + CTF                              | 5-abr    |
| 19   | 6-abr      | 12-abr   | Light obfuscation            | GDP + CTF                              | 12-abr   |
| 20   | 13-abr     | 19-abr   | DEP/ASLR/CFG                 | **CPP-R-2B04-3** (hollowing PoC) + CTF | 19-abr   |
| 21   | 20-abr     | 26-abr   | Syscalls intro               | GDP + CTF                              | 26-abr   |
| 22   | 27-abr     | 31-may   | Integration                  | **CPP-R-2B04-4** (comparison) + CTF    | 31-may   |

**PAD-2B04:** 31-may-2027 (Execution block)

---

### Phase 3 - Intel 4004 (1-jun-2027 → 30-sep-2027)

**Objective:** Userland Internals & Exploitation.

### **0B04 - Process & Memory Internals (4 weeks)**

**1-jun-2027 → 28-jun-2027**

| Week | Start date | End date | Stack/Topic       | Deliverable                           | Due date |
| ---- | ---------- | -------- | ----------------- | ------------------------------------- | -------- |
| 1    | 1-jun      | 7-jun    | PEB/TEB + regions | GDP + CTF                             | 7-jun    |
| 2    | 8-jun      | 14-jun   | Modules + heaps   | GDP + CTF                             | 14-jun   |
| 3    | 15-jun     | 21-jun   | TLS demo          | **CPP-R-0B04-1** (process map) + CTF  | 21-jun   |
| 4    | 22-jun     | 28-jun   | Integration       | **CPP-R-0B04-2** (PEB/TEB walk) + CTF | 28-jun   |

### **1B03 - Userland Exploitation I (3 weeks)**

**29-jun-2027 → 19-jul-2027**

| Week | Start date | End date | Stack/Topic          | Deliverable                                  | Due date |
| ---- | ---------- | -------- | -------------------- | -------------------------------------------- | -------- |
| 5    | 29-jun     | 5-jul    | Basic stack overflow | GDP + CTF                                    | 5-jul    |
| 6    | 6-jul      | 12-jul   | Basic ROP            | **CPP-R-1B03-1** (educational exploit) + CTF | 12-jul   |
| 7    | 13-jul     | 19-jul   | DEP/ASLR analysis    | **CPP-R-1B03-2** (detection harness) + CTF   | 19-jul   |

### **2B04 - Advanced Windows Internals (3 weeks)**

**20-jul-2027 → 9-ago-2027**

| Week | Start date | End date | Stack/Topic           | Deliverable                         | Due date |
| ---- | ---------- | -------- | --------------------- | ----------------------------------- | -------- |
| 8    | 20-jul     | 26-jul   | Memory/Object Manager | GDP + CTF                           | 26-jul   |
| 9    | 27-jul     | 2-ago    | Threads/APC + ETW     | **CPP-R-2B04-1** (handle map) + CTF | 2-ago    |
| 10   | 3-ago      | 9-ago    | Integration           | **CPP-R-2B04-2** (region map) + CTF | 9-ago    |

### **3B03 - Userland Exploitation II (3 weeks)**

**10-ago-2027 → 30-ago-2027**

| Week | Start date | End date | Stack/Topic     | Deliverable                            | Due date |
| ---- | ---------- | -------- | --------------- | -------------------------------------- | -------- |
| 11   | 10-ago     | 16-ago   | Info-leaks      | GDP + CTF                              | 16-ago   |
| 12   | 17-ago     | 23-ago   | ROP/JOP (Win)   | **CPP-R-3B03-1** (Win exploit) + CTF   | 23-ago   |
| 13   | 24-ago     | 30-ago   | ROP/JOP (Linux) | **CPP-R-3B03-2** (Linux exploit) + CTF | 30-ago   |

### **4B03 - Heap Exploitation (2 weeks)**

**31-ago-2027 → 13-sep-2027**

| Week | Start date | End date | Stack/Topic          | Deliverable                      | Due date |
| ---- | ---------- | -------- | -------------------- | -------------------------------- | -------- |
| 14   | 31-ago     | 6-sep    | UAF + tcache/fastbin | GDP + CTF                        | 6-sep    |
| 15   | 7-sep      | 13-sep   | Integration          | **CPP-R-4B03** (heap PoCs) + CTF | 13-sep   |

### **5B05 - Kernel Fundamentals + Elevation (2 weeks)**

**14-sep-2027 → 27-sep-2027**

| Week | Start date | End date | Stack/Topic           | Deliverable                   | Due date |
| ---- | ---------- | -------- | --------------------- | ----------------------------- | -------- |
| 16   | 14-sep     | 20-sep   | IOCTL + R/W primitive | GDP + CTF                     | 20-sep   |
| 17   | 21-sep     | 27-sep   | Local elevation (VM)  | **CPP-R-5B05** (SYSTEM) + CTF | 27-sep   |

### **6B02 - F3-CAP (1 week)**

**28-sep-2027 → 30-sep-2027**

| Date   | Activity                      | Deliverable                     |
| ------ | ----------------------------- | ------------------------------- |
| 28-sep | Userland → SYSTEM integration | Capstone F3 (draft)             |
| 29-sep | Technical defense + evidence  | Capstone F3 (final)             |
| 30-sep | **Phase 3 close-out**         | **PAD-F3** + Complete portfolio |

### Job Applications (October 2027)

**1-oct-2027 → 31-oct-2027**

| Week      | Activity                         | Goal                      |
| --------- | -------------------------------- | ------------------------- |
| 1–7 Oct   | Polish portfolio + LinkedIn      | Clean public repos        |
| 8–14 Oct  | Technical resume + cover letters | 1 page, verifiable skills |
| 15–21 Oct | Applications (10–15)             | Entry-level MA/RE         |
| 22–31 Oct | Follow-up + interview prep       | Mock interviews           |

---

### Phase 4 - Univac 1108 (Post-employment, ~12 months)

**Prerequisite:** work experience as MA/RE (6–12 months minimum)
**Estimated start:** based on post-employment availability
**Objective:** evasion, persistence, C2.

### **Blocks and estimated timing**

| Block      | Topic                            | Estimated duration | Deliverables    |
| ---------- | -------------------------------- | ------------------ | --------------- |
| **8A**     | Initial Access & Covert Delivery | 4 weeks            | CPP-R-8A        |
| **8B**     | Minimal Blue Track               | 4 weeks            | CPP-R-8B        |
| **F4-B1**  | Evasion I (artifact reduction)   | 6 weeks            | CPP-R-F4B1      |
| **F4-B2**  | Evasion II (telemetry-aware)     | 6 weeks            | CPP-R-F4B2      |
| **9B**     | Implant Crypto & Packer v2       | 4 weeks            | CPP-R-9B        |
| **F4-B3**  | Cross-platform Persistence       | 6 weeks            | CPP-R-F4B3      |
| **F4-B4**  | Covert C2 & Traffic Profiling    | 8 weeks            | CPP-R-F4B4      |
| **F4-B5**  | Covert Operations (lab)          | 4 weeks            | CPP-R-F4B5      |
| **F4-CAP** | Integrated Operation             | 4 weeks            | **Capstone F4** |

**Estimated total:** ~46–50 weeks (~12 months)

---

### Phase 5 - YoneEvilHost (Post-employment, ~6 months)

**Prerequisite:** Phase 4 completed
**Estimated start:** based on availability
**Objective:** kernel, firmware, UEFI/boot.

### **Blocks and estimated timing**

| Block          | Topic                            | Estimated duration | Deliverables    |
| -------------- | -------------------------------- | ------------------ | --------------- |
| **Pre-flight** | Kernel/firmware readiness        | 2 weeks            | Complete setup  |
| **F5-B1**      | Kernel Observability & Toolchain | 4 weeks            | CPP-R-F5B1      |
| **F5-B2**      | Linux LKM & Telemetry            | 6 weeks            | CPP-R-F5B2      |
| **F5-B3**      | Windows Driver Fundamentals      | 6 weeks            | CPP-R-F5B3      |
| **F5-B4**      | UEFI/OVMF & Bootflow             | 4 weeks            | CPP-R-F5B4      |
| **F5-B5**      | Rootkit-style PoCs (VM)          | 4 weeks            | CPP-R-F5B5      |
| **F5-CAP**     | Kernel/Firmware Blue-Aware       | 2 weeks            | **Capstone F5** |

**Estimated total:** ~28 weeks (~6 months)

### Summary of deliverables by phase

| Phase                 | CPP-Rs    | PADs                | Certifications         | BB/CTF Reports |
| --------------------- | --------- | ------------------- | ---------------------- | -------------- |
| Phase 0               | 4         | —                   | CCNA                   | —              |
| Phase 1               | 6–8       | 2                   | —                      | —              |
| Gap                   | —         | —                   | MAD20, GFACT           | 10–12          |
| Phase 2               | 6–8       | 2                   | —                      | 15–20          |
| Phase 3               | 4–6       | 1 + Capstone        | —                      | 20–25          |
| **Total (24 months)** | **20–26** | **5 + 1 Capstone**  | **CCNA, MAD20, GFACT** | **20–25**      |
| Phase 4               | 8–12      | 1 Capstone          | —                      | —              |
| Phase 5               | 6–10      | 1 Capstone          | —                      | —              |
| **Complete total**    | **34–48** | **7 + 3 Capstones** | **CCNA, MAD20, GFACT** | **20–25**      |

---

### Monthly KPIs (preparation, 24 months)

* **≥1 CPP-R/month** (Phase 0–3)
* **≥2 CTFs/week** (from Phase 0, 0B02)
* **≥3 BB submissions/month** (during Gap and Phase 2–3)
* **0 days without hands-on**

### Final notes

1. **Exact dates:** the real dates for Phases 0–3 (preparation) are above.
2. **Phases 4–5:** estimated timing, adjusted based on post-employment availability.
3. **Bug Bounty/CTFs:** continuous activity from 0B02 (ene-2026) through Phase 3 close.
4. **Flexibility:** if a block takes more/less time, adjust without breaking critical deliverables.
