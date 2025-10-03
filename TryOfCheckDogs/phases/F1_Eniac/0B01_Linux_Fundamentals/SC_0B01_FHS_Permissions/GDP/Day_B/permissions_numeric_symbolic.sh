#!/usr/bin/env bash 

# task: create 3 files with permissions 755, 644, 600 and check with stat

time { 
	touch /tmp/rb2_{755,644,600}
	chmod 755 /tmp/rb2_755
	chmod 644 /tmp/rb2_644
	chmod 600 /tmp/rb2_600
stat -c "%a %A %n" /tmp/rb2_* > /tmp/day_b_evidence/perms_check.txt
}

echo "verification: "
grep -q "755 -rwxr-xr-x" /tmp/day_b_evidence/perms_check.txt && grep -q 644 rw---r--r /tmp/day_b_evidence/perms_check.txt && grep -q 600 rw------- /tmp/day_b_evidence/perms_check.txt
echo "PASS: permissions correct"
