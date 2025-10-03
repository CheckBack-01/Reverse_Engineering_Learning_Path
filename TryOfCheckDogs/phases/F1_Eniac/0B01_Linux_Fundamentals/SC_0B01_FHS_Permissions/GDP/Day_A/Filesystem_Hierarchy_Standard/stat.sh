#!/usr/bin/env bash

echo -e "================================================================================"
echo "permissions"
echo -e "================================================================================ \n"

# stat
stat -c "Numeric: %a, Symbolic: %A, Ower & Group: %U:%G, name: %n" filesystems_virtual.txt
stat -c "%a %A %G:%U %n" filesystems_virtual.txt; echo -e "\n"

echo -e "file tmp test perms \n"
touch /tmp/test_perms.txt
echo -e "perms : 640 \n"
chmod 640 /tmp/test_perms.txt
stat -c "%a %A" /tmp/test_perms.txt

exit 0
