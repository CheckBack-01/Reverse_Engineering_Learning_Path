#!/usr/bin/env bash

# GOAL: reset a file/directory by removing all acls with setfacl -b

echo "verify that /tmp/acl_project has acl"
getfacl /tmp/project_acl 2>/dev/null | grep "user:user_test"
echo "-----------------------------------------"
echo "delete all acl . . ."
setfacl -R -b /tmp/project_acl
echo "-----------------------------------------"
echo "verification . . . "
getfacl /tmp/project_acl 2>/dev/null | grep "user:user_test"
ls -l /tmp/project_acl
stat -c "%a" /tmp/project_acl
echo "-----------------------------------------"
echo "result :"
echo "================"
getfacl /tmp/project_acl 2>/dev/null | grep -q "user:user_test" && echo "FAIL: remove acl" || echo "PASS: remove acl"
echo "================"
