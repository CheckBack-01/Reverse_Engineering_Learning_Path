#!/usr/bin/env bash

echo "=================================="
echo "Start [*] $(date -Is)"
echo -e "===============================\n"

echo -e "checking permissions"
stat -c "Numeric: %a, Symbolic: %A, Ower & Group: %U:%G, name: %n" filesystems_virtual.txt
stat -c "%a %A %G:%U %n" filesystems_virtual.txt
echo -e "\n"

echo -e "file tmp test perms \n"
touch /tmp/test_perms.txt

echo -e "permissions : 640 \n"
chmod 640 /tmp/test_perms.txt
stat -c "%a %A" /tmp/test_perms.txt
echo -e "\n"

echo "==================================="
echo "Finish [*] $(date -Is)"
echo "================================\n"

