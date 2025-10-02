#!/usr/bin/env bash

# read info cpu
cat /proc/cpuinfo | head -n 20
echo "=================================================================================================="
# read memory
cat /proc/meminfo | head -n 20

echo "=================================================================================================="
# Explorer /sys
ls /sys/class/net
echo "=================================================================================================="
# modificate
echo "test" > /proc/cpuinfo 2>&1 | head -n 2

echo "=================================================================================================="
# verification

test -f /proc/cpuinfo && grep -q "processor" /proc/cpuinfo && echo "PASS: /proc accesibility"
exit 0
