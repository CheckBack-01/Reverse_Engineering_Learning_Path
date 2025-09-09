#!/usr/bin/env bash

#0 =[*] canonical routes

set -Eeuo pipefail
IFS=$'\n\t'

ROOT="${HOME}/Reverse_Engineering_Learning_Path/Phases/F1_ENIAC/0B01/D14_FHS_BASELINE"
EVID="$ROOT/evidence"
LOG=$"$EVID/run.log"

#------------------------------------------------------------------#

#1 =[*] log to host screen, file and fingerprint

umask 027

exec > >(tee -a "$LOG") 2>&1

echo "=========================================="
echo "          PBR - D14 FHS BASELINE          "
echo "------------------------------------------"
echo "   [X] Start: $(date -Is)   "
echo -e "==========================================\n"
echo -e "ID = $(id)\n"
echo -e "UNAME = $(uname -a))\n"
echo -e "UMASK NOW = $(umask)\n"
echo -e "HOST INFO = $(hostnamectl 2>/dev/null || true)\n"

#------------------------------------------------------------------#

#2 =[*]fhs top

if [ ! -f "$EVID/fhs_ls.txt" ]; then touch "$EVID/fhs_ls.txt"; fi

ls -ld /{bin,boot,dev,etc,home,proc,root,tmp,usr,var} > "$EVID/fhs_ls.txt"
stat -c '%A %a %U : %G %n' /{bin,boot,dev,etc,home,proc,root,tmp,usr,var} > "$EVID/fhs_ls_stat.txt"

#------------------------------------------------------------------#

#3 =[*] control file

touch "$EVID/probe.txt"
stat -c '$a : %n' "$EVID/probe.txt" > "$EVID/probre_stat.txt"

#------------------------------------------------------------------#

#4 =[*] real shell

readlink -f /bin/sh > "$EVID/target.txt" || true

#------------------------------------------------------------------#

#5 =[*] bookmark for snapshot on the host and tooling

TIMESTAMP_UTC="$(date -u +%Y%m%dT%H%M%SZ)"
echo -e "Pre snapshot : $TIMESTAMP_UTC \n" > "$EVID/snapshot_marker.txt"

echo -e "date = $(date -Is)\n" > "$EVID/tooling.txt"
echo -e "kernel = $(uname -r)\n" >> "$EVID/tooling.txt"
echo -e "umask = $(umask)\n" >> "$EVID/tooling.txt"

#6 =[*] manifest

echo -e "mission_ID":"PBR_D14_FHS_BASELINE\n" >"$EVID/manifest.json"
echo -e "nat:(true)" >> "$EVID/manifest.json"
echo -e "umask: $(umask)\n" >> "$EVID/manifest.json"
echo -e "timestamp : $TIMESTAMP_UTC\n" >> "$EVID/manifest.json"
echo -e "distro: $( ./usr/lib/os-release 2>/dev/null; echo ${PRETTY_NAME:-unknown})" >> "$EVID/manifest.json"

#------------------------------------------------------------------#

#7 =[ ] checksum and package

sha256sum "$EVID"/* > "$EVID/checksums.txt"
tar -C "$ROOT" -czf "$ROOT/pbr_d14_fhs_run.tar.gz" "$EVID"

echo -e "\n"
echo "=========================================="
echo "          PBR - D14 FHS BASELINE          "
echo "------------------------------------------"
echo "   [X] Finish: $(date -Is)   "
echo -e "==========================================\n"

