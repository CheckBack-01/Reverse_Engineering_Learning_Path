#!/usr/bin/env bash

echo "=================================="
echo "Start [*] $(date -Is)"
echo -e  "================================== \n"

echo -e "task: use chown to change file owner and groups \n"

echo -e "file created \n"
touch /tmp/chown_test
stat -c "%U:%G" /tmp/chown_test
echo -e "\n"

# change group

echo -e "change group \n"
sudo chown  :test /tmp/chown_test
stat -c "%U %G" /tmp/chown_test

echo -e "\n"
echo "change group & owner"
sudo chown root:root /tmp/chown_test
stat -c "%U %G" /tmp/chown_test
echo -e "\n" 

# restore owner & group

echo "restore owner & group"
sudo chown $USER:$USER /tmp/chown_test
stat -c "%U:%G" /tmp/chown_test
echo -e "\n"

# verification

echo "verification . . ."
echo -e "\n"
[[ $(stat -c "%U" /tmp/chown_test) == "$USER" ]] && echo -e "PASS: owner restore \n"

echo "==================================="
echo "Finish [*] $(date -Is)"
echo -e  "=================================== \n"
