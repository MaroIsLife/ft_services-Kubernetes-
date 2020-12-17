#!/bin/bash
# mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('maro123');FLUSH PRIVILEGES;"
# mysql -u root -pmaro123 -e "CREATE USER 'maro'@'localhost' IDENTIFIED BY 'maro123';GRANT ALL PRIVILEGES ON *.* TO 'maro'@'localhost';FLUSH PRIVILEGES;"
/etc/init.d/mariadb start
mysql -u root -e "CREATE DATABASE mydb"
mysql -u root -e "CREATE DATABASE phpmyadmin"
mysql -u root -e "CREATE USER 'Maro'@'localhost' IDENTIFIED BY 'root';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'Maro'@'localhost';"
mysql -u root mydb < mydb.sql
mysql -u root phpmyadmin < phpmyadmin.sql
/usr/bin/mysqld_safe --datadir="/var/lib/mysql"