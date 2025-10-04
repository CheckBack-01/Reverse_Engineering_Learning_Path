#!/usr/bin/env bash

echo "==========================================================="
echo "task : list and verify existence of 11 base FHS directories"
echo "==========================================================="

mkdir -p /tmp/day_b_evidence
touch /tmp/day_b_evidence/fhs_check.txt

time ls -ld /{bin,boot,etc,home,lib,opt,root,sbin,tmp,usr,var} > /tmp/day_b_evidence/fhs_check.txt
echo "-------------------"
echo " verfication . . ."
lines=$(wc -l < /tmp/day_b_evidence/fhs_check.txt)
[[ $lines -eq 11 ]] && echo "PASS: 11 directories FHS" || echo "FAIL: 11 directories missing"
echo "redrills_1 | 120 | 08:04.77 | PASS/FAIL" > timed_redrills.txt

exit 0
