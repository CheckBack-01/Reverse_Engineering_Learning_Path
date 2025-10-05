#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "* task: verify acl \n"

echo -e "applied acl \n"
time {
touch /tmp/rb4_acl
chmod 600 /tmp/rb4_acl
setfacl -m u:user_test:r /tmp/rb4_acl
getfacl /tmp/rb4_acl 2>/dev/null > /tmp/day_b_evidence/acl_check.txt
}
echo -e "\n"

echo "verification . . . "
echo -e "\n"

grep -q "user:user_test:r" /tmp/day_b_evidence/acl_check.txt && echo "PASS: acl user_test"
echo "redrills_4 | 180 | 08:23.94 | PASS/FAIL" >> timed_redrills.txt

echo -e "\n"
echo "==================================="
echo "Finish [*] $(date -Is)"
echo "==================================="
