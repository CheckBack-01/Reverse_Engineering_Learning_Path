#!/usr/bin/env bash

# GOAL : apply acl to a directories tree with -R (recursive)

# directory struture
echo "directory structure"
echo "directories : src,docs,data"
echo "files : main.c, README.md,data.csv"
mkdir -p /tmp/project_acl/{src,docs,data}
touch /tmp/project_acl/src/main.c
touch /tmp/project_acl/docs/README.md
touch /tmp/project_acl/data/data.csv
echo "============================================"

# restrictive permissions
echo "restrictive permissions"
chmod -R 700 /tmp/project_acl
stat -c "%a %n" /tmp/project_acl
echo "============================================"

# applied recursive acl
echo "applied recursive setfacl"
setfacl -R -m u:user_test:r-X /tmp/project_acl
echo -e "\n"
echo "getfacl /tmp/project_acl"
getfacl /tmp/project_acl 2>/dev/null | grep "user:user_test"
echo "--------------------------------------------"
echo "getfacl /tmp/project_acl/src"
getfacl /tmp/project_acl/src 2>/dev/null | grep "user:user_test"
echo "--------------------------------------------"
echo "getfacl /tmp/project_acl/src/main.c"
getfacl /tmp/project_acl/src/main.c 2>/dev/null | grep "user:user_test"
echo -e "\n"
for d in /tmp/project_acl; do getfacl "$d" 2>/dev/null | grep -q "user:user_test:r-x" || { echo "FAIL: acl missing"; exit 1; } done
echo "PASS: applied recursive acl"
