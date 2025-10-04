#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "* GOAL: save acl to a text file and restore them later (useful for backups) \n"

# create test file
touch /tmp/file_acl_export.txt
setfacl -m u:user_test:rwx /tmp/file_acl_export.txt
setfacl -m g:users:r /tmp/file_acl_export.txt
echo -e "acl applied to \n"
getfacl /tmp/file_acl_export.txt 2>/dev/null

# expoting acl
touch /tmp/acl_backup.txt
getfacl /tmp/file_acl_export.txt 2>/dev/null > /tmp/acl_backup.txt
echo "backup created"
echo -e "\n"
cat /tmp/acl_backup.txt

# removed acl
echo -e "removed acl \n"
setfacl -b /tmp/file_acl_export.txt
getfacl /tmp/file_acl_export.txt 2>/dev/null

echo -e "restore acl \n"
setfacl --restore=/tmp/file_acl_export.txt
getfacl /tmp/file_acl_export.txt 2>/dev/null

echo "===================================="
echo "Finish [*] $(date -Is)"
echo -e "==================================== \n"
