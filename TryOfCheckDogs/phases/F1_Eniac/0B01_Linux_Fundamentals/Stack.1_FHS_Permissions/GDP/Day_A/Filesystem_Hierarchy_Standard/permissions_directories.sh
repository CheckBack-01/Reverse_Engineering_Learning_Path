#!/usr/bin/env bash

# Objective: understand that in directories: r allows you to list content and x allows you to enter

# directories
mkdir /tmp/dir_perms_test
touch /tmp/dir_perms_test/file.txt

echo "without x, does not allow entry"
chmod 600 /tmp/dir_perms_test
ls /tmp/dir_perms_test
echo "========================================================="
echo "with x without r, allow entry but does not allow listiing"
chmod 100 /tmp/dir_perms_test
ls /tmp/dir_perms_test
echo "========================================================="
echo "with r+x, allow entry and allow listing"
chmod 700 /tmp/dir_perms_test
ls /tmp/dir_perms_test
cat /tmp/dir_perms_test/file.txt

# verfication

ls /tmp/dir_perms_test > /dev/null 2>&1 && echo "PASS: r+x true"
