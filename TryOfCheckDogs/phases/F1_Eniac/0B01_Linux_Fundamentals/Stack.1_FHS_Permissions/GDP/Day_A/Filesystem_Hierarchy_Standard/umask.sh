#!/usr/bin/env bash 

# Objective: to understand how umask affects default permissions when creating files & directories 

# files & directories
touch /tmp/file_default.txt
mkdir /tmp/dir_default
stat -c "%a %n" /tmp/file_default.txt /tmp/dir_default
echo "================================================="
echo -e "change umask \n"
umask 027
mkdir /tmp/dir_027
touch /tmp/file_027.txt
stat -c "%a %n" /tmp/file_027.txt /tmp/dir_027

# verification
(
	umask 027
	touch /tmp/check_umask_027
	mkdir /tmp/check_umask_027.txt
	file_perm=$(stat -c "%a" /tmp/check_umask_027.txt)
	dir_perm=$(stat -c "%a" /tmp/check_umask_027)
	[[ "file_perm" == "640" ]] && [[ "$dir_perm" == "750" ]] && echo "PASS: umask true"
)

exit 0
