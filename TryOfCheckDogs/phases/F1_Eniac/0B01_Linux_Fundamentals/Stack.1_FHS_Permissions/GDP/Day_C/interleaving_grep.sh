#!/usr/bin/env bash

echo "===================================="
echo "Start [*] $(date -Is)"
echo -e "==================================== \n"

echo -e "task: look for lines with the word root in /etc/passwd and count how many there are \n"

echo "* looking for lines with root in /etc/passwd "
grep 'root' /etc/passwd
echo -e "\n"

echo "* counting lines"

grep 'root' /etc/passwd | wc -l

echo -e "\n"
echo "verfication . . ."

count=$(grep 'root' /etc/passwd | wc -l)
[[ $count -ge 1 ]] && echo "PASS: lines found with root"

echo -e "\n"
echo "===================================="
echo "Finish [*] $(date -Is)"
echo -e "==================================== \n"

