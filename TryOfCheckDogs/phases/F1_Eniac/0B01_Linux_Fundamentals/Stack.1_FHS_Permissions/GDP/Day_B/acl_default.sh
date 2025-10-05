#!/usr/bin/env bash


echo "==================================="
echo Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "task : create directory, assing default acl, create child file and check inheritance \n"

echo -e " create directory, assing default acl \n"

time {
mkdir /tmp/rb6_default
setfacl -d -m u:user_test:r-X /tmp/rb6_default
touch /tmp/rb6_default/child.txt
getfacl /tmp/rb6_default/child.txt 2>/dev/null > /tmp/day_b_evidence/default_acl_check.txt
}
echo -e "\n"

echo -e "verification . . .  \n"
grep -q "user:user_test:r--" /tmp/day_b_evidence/default_acl_check.txt && echo "PASS: assing acl deafult"

echo "redrills_6 | 240 | 05:23.83 | PASS/FAIL" >> timed_redrills.txt

echo -e "\n"
echo "===================================="
echo Finish [*] $(date -Is)"
echo "==================================== \n"
