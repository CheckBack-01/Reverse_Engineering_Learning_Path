#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "task: from etc/passwd, extract only user names that have bash in their shell \n"

echo -e "* looking for bash in /etc/passwd,cutting and extracting the firt column 1 (usernames) \n"
grep 'bash' /etc/passwd | cut -d: -f1 > /tmp/users_bash.txt
cat /tmp/users_bash.txt

echo -e "\n"
echo -e "verificando . . . \n"
grep 'checkback-101' /tmp/users_bash.txt && echo -e  "PASS: user with bash \n"
grep 'user_test' /tmp/users_bash.txt && echo -e  "PASS: user with bash \n"


echo "===================================="
echo "Finish [*] $(date -Is)"
echo -e "==================================== \n"


