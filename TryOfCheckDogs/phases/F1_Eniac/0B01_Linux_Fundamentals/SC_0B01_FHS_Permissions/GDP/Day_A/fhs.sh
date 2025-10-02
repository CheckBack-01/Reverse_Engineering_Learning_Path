#!/usr/bin/env bash
for d in /bin /boot /etc /home /lib /opt /root /sbin /tmp /usr /var; do test -d "$d" || { echo "FAIL: $d no exists"; exit 1; } done
echo "PASS: structure FHS present"
exit 0
