#!/usr/bin/env bash

# Goal: use setfacl to give read permissions to a specific user without changing owner/group

touch /tmp/acl_demo.txt
chmod 600 /tmp/acl_demo.txt
echo "private content" > /tmp/acl_demo.txt
ls -l /tmp/acl_demo.txt
echo "=============================================="
echo "after set file acl"
setfacl -m u:user_test:r /tmp/acl_demo.txt
# verification
getfacl /tmp/acl_demo.txt | grep -q "user:user_test:r--" && echo "PASS: user_test ACL applied"
ls -l /tmp/acl_demo.txt
exit 0
