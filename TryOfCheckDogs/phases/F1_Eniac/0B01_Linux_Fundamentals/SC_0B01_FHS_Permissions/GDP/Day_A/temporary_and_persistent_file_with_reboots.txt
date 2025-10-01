#!/usr/bin/env bash

# volatile file
echo "volatile_file" > /tmp/test_volatile.txt
ls -l /tmp/test_volatile.txt

# persistent file
echo "persistent_file.txt" > /var/tmp/test_persistent.txt 
ls -l /var/tmp/test_persistent.txt

# test file
test -f /tmp/test_volatile.txt && test -f /var/tmp/test_persistent.txt && echo "PASS: both files created"
exit 0
