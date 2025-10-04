#!/usr/bin/env bash 

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

echo -e "* task: manually convert 755, 644, 600 to rwx notation \n"

echo -e "file created \n"
touch /tmp/file_755.txt /tmp/file_644.txt /tmp/file_600.txt
echo -e "/tmp/file_755.txt /tmp/file_644.txt /tmp/file_600.txt \n"

# permissions
echo -e "permissions \n"
chmod 755 /tmp/file_755.txt
chmod 644 /tmp/file_644.txt
chmod 600 /tmp/file_600.txt
stat -c "%a %A %n" /tmp/file_* && echo -e "\n"

echo -e "permissions manually convert \n"
echo "u=rwx,g=r-x,o=r-x"
chmod u=rwx,g=r+x,o=r+x /tmp/file_755.txt
stat -c "%a %A %n" /tmp/file_755.txt && echo -e "\n"

echo "u=rw-,g=r--,o=r--"
chmod u=rw-,g=r--,o=r-- /tmp/file_644.txt
stat -c "%a %A %n" /tmp/file_644.txt && echo -e "\n"

echo "u=rw-,g=---,o=---"
chmod u=rw-,g=---,o=--- /tmp/file_600.txt
stat -c "%a %A %n" /tmp/file_600.txt && echo -e "\n"

echo -e "verfication . . . \n"

[[ $(stat -c "%a" /tmp/file_755.txt) == "755" ]] && echo "PASS: 755"
[[ $(stat -c "%a" /tmp/file_644.txt) == "644" ]] && echo "PASS: 644"
[[ $(stat -c "%a" /tmp/file_600.txt) == "600" ]] && echo "PASS: 600"
echo -e "\n"

echo -e "task: chmod with notation symbolic \n"

echo -e "permissions notation symbolic \n"

# file :
echo -e  "file created  /tmp/symbolic_test.txt \n"
touch /tmp/symbolic_test.txt
chmod 600 /tmp/symbolic_test.txt
stat -c "%a %A" /tmp/symbolic_test.txt && echo -e "\n"

echo "user + execution"
chmod u+x /tmp/symbolic_test.txt
(echo "perms after changes :"; stat -c "%a %A" /tmp/symbolic_test.txt)

echo "goup + read"
chmod g+r /tmp/symbolic_test.txt
(echo "perms after changes :"; stat -c "%a %A" /tmp/symbolic_test.txt)

echo "others + read, ower - execution"
chmod o+r /tmp/symbolic_test.txt
chmod u-x /tmp/symbolic_test.txt
(echo "perms after changes :"; stat -c "%a %A" /tmp/symbolic_test.txt && echo -e "\n")

echo "verfication :"
[[ $(stat -c "%a" /tmp/symbolic_test.txt) == "644" ]] && echo "PASS: symbolic true"

echo "===================================="
echo "Finish [*] $(date -Is)"
echo -e "==================================== \n"
