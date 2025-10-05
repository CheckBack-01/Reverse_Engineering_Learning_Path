#!/usr/bin/env bash

echo "==================================="
echo "Start [*] $(date -Is)"
echo -e "=================================== \n"

# varibale
perm=$(stat -c "%a" /tmp)

# sticky bit verification
echo -e "sticky bit verification \n"
[[ "$perm" == "1777" ]] && echo -e "PASS: sticky bit active \n"

echo "===================================="
echo "Finish [*] $(date -Is)"
echo -e "==================================== \n"
