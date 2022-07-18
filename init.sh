
apt-get update && apt-get install openssh-client openssh-server -y 
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config 
service ssh restart && service --status-all

apt-get install nano

sleep 3

apt-get install expect -y

apt-get install net-tools

netstat -tupan

expect -v

/usr/bin/expect -c ' 
spawn passwd root
sleep 1
expect "New password:" 
send please_change_me\n;
expect "Retype new password:" 
send please_change_me\n;
sleep 2
interact
'
sleep 1

# # ---------------works create db in postgrase
/usr/bin/expect -c ' 

spawn psql -U postgres
expect "postgres=#"
send "CREATE DATABASE db_postgres;\r"
sleep 1
expect "CREATE DATABASE"
send "\\\q\n"
sleep 1
'
# # ---------------restores from .sql to that db
sleep 3
SQL_FILE="$(ls docker-entrypoint-initdb.d -1)"
psql -U postgres -d db_postgres -f "/docker-entrypoint-initdb.d/${SQL_FILE}"
echo "input psql -U postgres -d DB_NEW_NAME=db_imported_data_3 -f /docker-entrypoint-initdb.d/${SQL_FILE}"
