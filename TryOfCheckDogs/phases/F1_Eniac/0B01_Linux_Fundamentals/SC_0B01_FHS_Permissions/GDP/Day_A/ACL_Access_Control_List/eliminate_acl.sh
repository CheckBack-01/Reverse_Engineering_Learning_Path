#!/usr/bin/env bash

# GOAL: remove a previously assigned acl with setfacl -x

echo "verify that files have acl"
getfacl /tmp/acl_demo.txt | grep "user:user_test"
echo "=========================================="
echo "remove acl"
setfacl -x u:user_test /tmp/acl_demo.txt
ls -l /tmp/acl_demo.txt
getfacl /tmp/acl_demo.txt | grep -q "user:user_test" && echo "FAIL: remove acl" || echo "PASS: acl was removed successfully"
