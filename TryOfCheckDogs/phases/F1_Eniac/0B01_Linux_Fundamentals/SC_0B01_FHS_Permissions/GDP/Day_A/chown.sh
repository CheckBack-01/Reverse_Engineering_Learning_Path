#!/usr/bin/env bash

#Objective: use chown to change file owner and groups

touch /tmp/chown_test
stat -c "%U:%G" /tmp/chown_test

# change group
echo "======================================="
echo "change group"
sudo chown  :test /tmp/chown_test
stat -c "%U %G" /tmp/chown_test
echo "======================================="
echo "change group & owner"
sudo chown root:root /tmp/chown_test
stat -c "%U %G" /tmp/chown_test
echo "======================================="
echo "restore owner & group"
sudo chown $USER:$USER /tmp/chown_test
stat -c "%U:%G" /tmp/chown_test

# verification
[[ $(stat -c "%U" /tmp/chown_test) == "$USER" ]] && echo "PASS: owner restore"

exit 0
