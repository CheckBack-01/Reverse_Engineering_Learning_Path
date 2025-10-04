#!/usr/bin/env bash

# varibale
perm=$(stat -c "%a" /tmp)

# sticky bit verification
[[ "$perm" == "1777" ]] && echo "PASS: sticky bit active"
