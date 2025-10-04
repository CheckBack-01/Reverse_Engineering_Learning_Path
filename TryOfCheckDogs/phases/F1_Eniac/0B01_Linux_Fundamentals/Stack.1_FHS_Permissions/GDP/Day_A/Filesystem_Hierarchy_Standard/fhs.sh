#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "confirming existence of directories . . .\n"
for d in /bin /boot /etc /home /lib /opt /root /sbin /tmp /usr /var; do test -d "$d" || { echo "FAIL: $d no exists"; exit 1; } done
echo "PASS: structure FHS present"

echo -e "\n"
echo "===================================="
echo "Finish [*] $(date -Is)"
echo "===================================="
