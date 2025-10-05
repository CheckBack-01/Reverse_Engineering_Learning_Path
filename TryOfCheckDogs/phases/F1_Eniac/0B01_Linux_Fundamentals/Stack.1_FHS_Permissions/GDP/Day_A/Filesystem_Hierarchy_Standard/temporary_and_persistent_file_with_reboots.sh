#!/usr/bin/env bash

echo "==================================="
echo "Start  [*] $(date -Is)"
echo "==================================="

# volatile file
echo -e "volatile file \n"
echo "volatile_file" > /tmp/test_volatile.txt
ls -l /tmp/test_volatile.txt
echo -e "\n"

# persistent file
echo -e "persistent file \n"
echo "persistent_file.txt" > /var/tmp/test_persistent.txt
ls -l /var/tmp/test_persistent.txt
echo -e "\n"

# test file
echo "verification test /n"
test -f /tmp/test_volatile.txt && test -f /var/tmp/test_persistent.txt && echo "PASS: both files created"
echo -e "\n"

echo "===================================="
echo "Finish  [*] $(date -Is)"
echo "===================================="
