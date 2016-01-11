#!/bin/bash

set -eu
new_pass='MyNewPass4@'
mysql --defaults-file=/root/.tmp.my.cnf -e "ALTER USER 'root'@'localhost' IDENTIFIED BY  '$new_pass' "

umask 0077

cat > /root/.my.cnf <<EOF
[client]
user=root
password=$new_pass
connect-expired-password
EOF

