#!/usr/bin/env bash

echo "============================================================"
echo "task: extract only usernames (first column) from /etc/passwd"
echo -e  "============================================================ \n"

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "extract column 1 (username) and save file \n"
cut -d: -f1 /etc/passwd > /tmp/usuarios.txt
cat /tmp/usuarios.txt

echo -e "verification . . . \n"
head -1 /tmp/usuarios.txt | grep -q 'root' && echo -e "PASS: extracted users \n"

echo "==================================="
echo "Finish [*] $(date -Is)"
echo "==================================="
