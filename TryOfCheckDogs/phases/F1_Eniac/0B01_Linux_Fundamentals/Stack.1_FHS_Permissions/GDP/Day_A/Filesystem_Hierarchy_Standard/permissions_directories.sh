#!/usr/bin/env bash


echo "==================================="
echo Start [*] $(date -Is)"
echo "==================================="

echo -e "* tack : understand that in directories: r allows you to list content and x allows you to enter \n"

# directories
echo -e "directories \n"
mkdir /tmp/dir_perms_test
touch /tmp/dir_perms_test/file.txt
echo -e "\n"

echo -e "without x, does not allow entry \n"
chmod 600 /tmp/dir_perms_test
ls /tmp/dir_perms_test
echo -e "\n"

echo -e "with x without r, allow entry but does not allow listiing \n"
chmod 100 /tmp/dir_perms_test
ls /tmp/dir_perms_test
echo -e "\n"

echo -e "with r+x, allow entry and allow listing \n"
chmod 700 /tmp/dir_perms_test
ls /tmp/dir_perms_test
cat /tmp/dir_perms_test/file.txt
echo -e "\n"

# verfication
echo -e "verification . . . \n"
ls /tmp/dir_perms_test > /dev/null 2>&1 && echo  -e "PASS: r+x true \n"

echo "===================================="
echo Finish [*] $(date -Is)"
echo "===================================="

