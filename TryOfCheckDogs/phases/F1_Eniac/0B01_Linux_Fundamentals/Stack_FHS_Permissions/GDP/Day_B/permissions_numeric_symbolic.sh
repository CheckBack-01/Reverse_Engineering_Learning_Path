#!/usr/bin/env bash
echo "======================================================================="
echo "task: create 3 files with permissions 755, 644, 600 and check with stat"
echo "======================================================================="
time {
mkdir -p /tmp/day_b_evidence
touch /tmp/rb2_{755,644,600}
chmod 755 /tmp/rb2_755
chmod 644 /tmp/rb2_644
chmod 600 /tmp/rb2_600
stat -c "%a %A %n" /tmp/rb2_* | tee /tmp/day_b_evidence/perms_check.txt
}
echo "-------------------"
echo "verification . . . "
grep -q "755 -rwxr-xr-x" /tmp/day_b_evidence/perms_check.txt 2>/dev/null && echo "PASS: permissions correct"
grep -q "644 -rw-r--r--" /tmp/day_b_evidence/perms_check.txt 2>/dev/null && echo "PASS: permissions correct"
grep -q "600 -rw-------" /tmp/day_b_evidence/perms_check.txt 2>/dev/null && echo "PASS: permissions correct"

echo "redrills_2 | 180 | 11:09.78 | PASS/FAIL" >> timed_redrills.txt

