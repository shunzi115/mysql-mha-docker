mysql -u root -p$MYSQL_ROOT_PASSWORD <<EOSQL
GRANT ALL ON *.* TO myuser@'10.5.0.%' IDENTIFIED BY 'mypass';
CHANGE MASTER TO MASTER_HOST='10.5.0.10', MASTER_USER='myslave', MASTER_PASSWORD='myslave', MASTER_CONNECT_RETRY=60;
start slave;
exit;
EOSQL