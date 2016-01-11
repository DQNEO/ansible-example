#!/bin/bash

set -eu
log_file=/var/log/mysqld.log
tmp_file=/root/.tmp.my.cnf
umask 0077

if [[ -e $tmp_file ]]; then
    exit 0
fi

tmp_pass=$(sudo grep 'password is generated' $log_file | awk -F'root@localhost: ' '{print $2}')

cat > $tmp_file <<EOF
[client]
user=root
password=$tmp_pass
EOF

