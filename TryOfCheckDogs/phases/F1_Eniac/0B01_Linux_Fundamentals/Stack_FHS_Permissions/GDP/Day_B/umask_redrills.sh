#!/usr/bin/env bash

echo "=================================================================================="
echo "task: change umask to 027, create file aand directory, verify restored permissions"
echo "=================================================================================="

time {
(
mkdir -p /tmp/day_b_evidence
umask 027
touch /tmp/rb3_file
mkdir /tmp/rb3_dir
stat -c "%a %n" /tmp/rb3_file /tmp/rb3_dir > /tmp/day_b_evidence/umask_check.txt
)
}
echo "------------------"
echo "verification . . ."

grep -q "640 /tmp/rb3_file" /tmp/day_b_evidence/umask_check.txt && echo "PASS: applied umask"
grep -q "750 /tmp/rb3_dir" /tmp/day_b_evidence/umask_check.txt && echo "PASS: applied umask"

echo "redrills_3 | 240 | 06:00.45 o
| PASS/FAIL" >> timed_redrills.txt
