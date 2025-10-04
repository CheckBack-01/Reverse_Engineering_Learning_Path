#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "* GOAL: reset a file/directory by removing all acls with setfacl -b \n"

echo "verify that /tmp/acl_project has acl"
getfacl /tmp/project_acl 2>/dev/null | grep "user:user_test"
echo -e "\n"

echo -e "delete all acl . . . \n"
setfacl -R -b /tmp/project_acl
getfacl /tmp/project_acl

echo -e "verification . . . \n"
getfacl /tmp/project_acl 2>/dev/null | grep "user:user_test"
ls -l /tmp/project_acl
stat -c "%a" /tmp/project_acl
echo -e "\n"

echo -e "result : \n"
getfacl /tmp/project_acl 2>/dev/null | grep -q "user:user_test" && echo "FAIL: remove acl" || echo -e "PASS: acl removed \n"

echo "===================================="
echo "Finish [*] $(date -Is)"
echo "===================================="
