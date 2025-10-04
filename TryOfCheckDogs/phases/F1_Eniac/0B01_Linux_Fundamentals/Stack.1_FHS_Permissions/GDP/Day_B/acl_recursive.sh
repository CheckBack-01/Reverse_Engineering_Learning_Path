#!/usr/bin/env bash
echo "======================================================================================="
echo "task: create tree in 3 directories, applied acl recusirve u:$USER:r-X and verify"
echo "======================================================================================="
time {
mkdir -p /tmp/day_b_evidence
mkdir -p /tmp/rb5_tree/{a,b,c}
touch /tmp/rb5_tree/a/file1.txt
touch /tmp/rb5_tree/b/file2.txt

chmod -R 700 /tmp/rb5_tree
stat -c "%a %n" /tmp/rb5_tree
setfacl -R -m u:user_test:r-X /tmp/rb5_tree
getfacl -R /tmp/rb5_tree 2>/dev/null > /tmp/day_b_evidence/acl_recursive_check.txt
}
echo "-------------------"
echo "verification . . . "
grep -q "user:user_test:r-x" /tmp/day_b_evidence/acl_recursive_check.txt && echo "PASS: applied recursive acl with -X correct" || echo "FAIL"
grep -q "user:user_test:r--" /tmp/day_b_evidence/acl_recursive_check.txt

echo "redirlls_5 | 300 | 06:35.67 | PASS/FAIL" >> timed_redrills.txt

