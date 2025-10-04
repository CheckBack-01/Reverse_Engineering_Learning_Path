#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "* Goal: use setfacl to give read permissions to a specific user without changing owner/group \n"

# created file

echo -e "file created and appliying permissons \n" 
touch /tmp/acl_demo.txt
chmod 600 /tmp/acl_demo.txt
echo "private content" > /tmp/acl_demo.txt
stat -c "%a : %n" /tmp/acl_demo.txt && echo -e "\n"
getfacl /tmp/acl_demo.txt 2>/dev/null
echo -e "\n"

# appled setfacl

echo -e "after setfacl \n"
setfacl -m u:user_test:r /tmp/acl_demo.txt
getfacl /tmp/acl_demo.txt 2>/dev/null

# verification
echo -e "verfication . . . \n"
stat -c "%a : %n" /tmp/acl_demo.txt && echo -e "\n"
getfacl /tmp/acl_demo.txt | grep -q "user:user_test:r--" && echo -e "PASS: user_test ACL applied \n"


echo "===================================="
echo "Finish [*] $(date -Is)"
echo "===================================="


