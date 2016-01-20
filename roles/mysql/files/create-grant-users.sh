#!/bin/bash

mysql -e "CREATE USER user1@'%' IDENTIFIED BY 'MyS9L@hogehoge'";
mysql -e "CREATE USER user2@'%' IDENTIFIED BY 'MyS9L@hogehoge'";

mysq -e "GRANT ALL ON mydb1.* TO user1@'%'"
mysq -e "GRANT ALL ON mydb2.* TO user2@'%'"

touch /root/db_user_is_created

