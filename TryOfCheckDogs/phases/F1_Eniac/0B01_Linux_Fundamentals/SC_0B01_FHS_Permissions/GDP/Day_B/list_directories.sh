#!/usr/bin/env bash

# task : list and verify existence of 11 base FHS directories

time ls -ld /{bin,boot,etc,home,lib,opt,root,sbin,tmp,usr,var} > /tmp/day_b_evidence/fhs_check.txt

# verfication
lines=$(wc -l < /tmp/day_b_evidence/fhs_check.txt)
[[ $lines -eq 11 ]] && echo "PASS: 11 directories FHS" || echo "FAIL: 11 directories missing"
echo "re-drills |120|08:04.77| PASS/FAIL" > timed_redrills.txt

exit 0
