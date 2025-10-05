#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

# read info cpu
echo -e "read info cpu \n"
cat /proc/cpuinfo | head -n 20
echo -e "\n"

# read memory
echo -e "read memory \n"
cat /proc/meminfo | head -n 20
echo -e "\n "

# Explorer /sys
echo "Explore /sys \n"
ls /sys/class/net
echo -e "\n"

# modificate
echo "modificate \n"
echo "test" > /proc/cpuinfo 2>&1 | head -n 2
echo -e "\n"


# verification
echo -e "verification . . . \n"
test -f /proc/cpuinfo && grep -q "processor" /proc/cpuinfo && echo "PASS: /proc accesibility"

echo "===================================="
echo "Finish [*] $(date -Is)"
echo "===================================="
