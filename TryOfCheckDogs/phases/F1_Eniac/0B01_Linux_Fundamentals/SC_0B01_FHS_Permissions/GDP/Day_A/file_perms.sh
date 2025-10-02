#!/usr/bin/env bash 

# Objective: manually convert 755, 644, 600 to rwx notation.

# file :
touch /tmp/file_755.txt /tmp/file_644.txt /tmp/file_600.txt

# permissions :
chmod 755 /tmp/file_755.txt
chmod 644 /tmp/file_644.txt
chmod 600 /tmp/file_600.txt
stat -c "%a %A %n" /tmp/file_*
echo "====================================="
echo -e "permissions manually convert \n"
echo "u=rwx,g=r-x,o=r-x"
chmod u=rwx,g=r+x,o=r+x /tmp/file_755.txt
stat -c "%a %A %n" /tmp/file_755.txt
echo "====================================="
echo "u=rw-,g=r--,o=r--"
chmod u=rw-,g=r--,o=r-- /tmp/file_644.txt
stat -c "%a %A %n" /tmp/file_644.txt
echo "====================================="
echo "u=rw-,g=---,o=---"
chmod u=rw-,g=---,o=--- /tmp/file_600.txt
stat -c "%a %A %n" /tmp/file_600.txt
echo "====================================="
echo "verfication :"
[[ $(stat -c "%a" /tmp/file_755.txt) == "755" ]] && echo "PASS: 755"
[[ $(stat -c "%a" /tmp/file_644.txt) == "644" ]] && echo "PASS: 644"
[[ $(stat -c "%a" /tmp/file_600.txt) == "600" ]] && echo "PASS: 600"

# Objective: chmod with notation symbolic
echo -e "====================================="
echo -e "permissions notation symbolic \n"
# file :
touch /tmp/symbolic_test.txt
chmod 600 /tmp/symbolic_test.txt
stat -c "%a %A" /tmp/symbolic_test.txt
echo "====================================="
echo "user + execution"
chmod u+x /tmp/symbolic_test.txt
(echo "perms after changes :"; stat -c "%a %A" /tmp/symbolic_test.txt)
echo "====================================="
echo "goup + read"
chmod g+r /tmp/symbolic_test.txt
(echo "perms after changes :"; stat -c "%a %A" /tmp/symbolic_test.txt)
echo "====================================="
echo "others + read, ower - execution"
chmod o+r /tmp/symbolic_test.txt
chmod u-x /tmp/symbolic_test.txt
(echo "perms after changes :"; stat -c "%a %A" /tmp/symbolic_test.txt)
echo "====================================="
echo "verfication :"
[[ $(stat -c "%a" /tmp/symbolic_test.txt) == "644" ]] && echo "PASS: symbolic true"
exit 0
