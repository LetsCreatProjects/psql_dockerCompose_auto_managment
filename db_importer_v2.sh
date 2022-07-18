#!/bin/bash
# # # ---------------Load config values
# source config.conf
# # ---------------Connection and creation of .sql file + close the connection---Working
/usr/bin/expect -c ' 
spawn ssh -o StrictHostKeyChecking=no root@172.18.0.3
sleep 1
send please_change_me\n;
expect "*#" 
sleep 1
send "pg_dump -U postgres > postgres_backup_3.sql db_postgres\n" 
sleep 1
send "exit\n"
'
sleep 3
# # ---------------Connection via sftp and fetch .sql file + close the connection
/usr/bin/expect -c ' 

spawn sftp -o StrictHostKeyChecking=no root@172.18.0.3
sleep 1
send please_change_me\n;
expect "sftp>"
send "get postgres_backup_3.sql\r"
expect "sftp>"
send "exit\r"
interact
'
sleep 3
# # ---------------works create db in postgrase
/usr/bin/expect -c ' 

spawn psql -U postgres
expect "postgres=#"
send "CREATE DATABASE db_imported_data_3;\r"
sleep 1
expect "CREATE DATABASE"
send "\\\q\n"
sleep 1
'
# # ---------------restores from .sql to that db
sleep 3
psql -U postgres -d db_imported_data_3 -f postgres_backup_3.sql

# # --------------- To display that all tables at the right place

/usr/bin/expect -c ' 

spawn psql -U postgres
expect "postgres=#"
sleep 1
send "\\\c db_imported_data_3 \\\dt\r" 
sleep 1
send "\\\q\n"
sleep 1
interact
'

/usr/bin/expect -c ' 

spawn psql -U postgres
expect "postgres=#"
sleep 1
send "\\\c db_postgres \\\dt\r" 
sleep 1
send "\\\q\n"
sleep 1
interact
'



