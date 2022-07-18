##  Creating and merging 2 postgresSQL containers to one, with db inside, using Docker Compose - with one click!

## Configuration:
run manager.sh

## Files:
-- Those files are for data base creation:
- chinavsindia.sql
- passengers.sql

-- Those files are for containers creation
- docker-compose-main-v0.yml
- docker-compose-tmp-v0.yml

-- This file is used for initial configuration of the container
- init.sh

-- This file is used to connect from main postgres via ssh , import db and create local table with new db name.
- db_importer_v2.sh

-- This file for manage all the process
- manager.sh

-- This file is for QA, if you will want to erase all and start again
- clean.sh 
