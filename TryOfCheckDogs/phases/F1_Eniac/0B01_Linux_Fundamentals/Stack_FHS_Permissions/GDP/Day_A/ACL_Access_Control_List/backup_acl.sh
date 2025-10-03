#!/usr/bin/env bash

# GOAL:

# create test acl
echo "create test file : file_acl_export.txt"
echo "-------------------------------"
touch /tmp/file_acl_export.txt
setfacl -m u:user_test:rw /tmp/file_acl_export.txt
setfacl -m g:users:r /tmp/file_acl_export.txt
echo "export acl . . . "
getfacl /tmp/file_acl_export.txt 2>/dev/null > /tmp/acl_backup.txt
cat /tmp/acl_backup.txt
echo "-------------------------------"
echo "delete acl . . . "
setfacl -b /tmp/file_acl_export.txt
getfacl /tmp/file_acl_export.txt  2>/dev/null
echo "-------------------------------"
echo "restore acl"
setfacl --restore=/tmp/acl_backup.txt
getfacl /tmp/file_acl_export.txt 2>/dev/null
echo "verification  . . ."
getfacl /tmp/file_acl_export.txt 2>/dev/null | grep -q "user:user_test:rw-" && getfacl /tmp/file_acl_export.txt 2>dev/null | grep -q "group:users:r--" && echo "PASS: restores acl"
