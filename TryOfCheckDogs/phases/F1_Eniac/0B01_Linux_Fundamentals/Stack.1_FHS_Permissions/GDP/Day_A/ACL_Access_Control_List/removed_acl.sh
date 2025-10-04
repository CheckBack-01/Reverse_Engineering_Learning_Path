#!/usr/bin/env bash

echo "===================================="
echo "Start [*] $(date -Is)"
echo -e "==================================== \n"

echo "* GOAL: remove a previously assigned acl with setfacl -x"

touch /tmp/acl_demo.txt
setfacl -m u:user_test:rwx /tmp/acl_demo.txt
echo -e "verify that files have acl \n"
getfacl /tmp/acl_demo.txt 2>/dev/null | grep "user:user_test" && echo -e "\n"

echo "removed acl"
setfacl -x u:user_test /tmp/acl_demo.txt
ls -l /tmp/acl_demo.txt && echo -e "\n"
getfacl /tmp/acl_demo.txt 2>/dev/null | grep -q "user:user_test" && echo "FAIL: remove acl" || echo -e "PASS: acl was removed successfully \n"


echo "====================================="
echo "Finish [*] $(date -Is)"
echo -e "===================================== \n"
