
 docker-compose -f docker-compose-main-v0.yml up -d 
 docker-compose -f docker-compose-tmp-v0.yml up -d 

 docker ps

echo "Wait 30 seconds.."
sleep 30

sudo docker exec -it tmp_postgres_sql_db sh -c "bash init.sh"
sudo docker exec -it main_postgres_sql_db sh -c "bash init.sh"
sudo docker exec -it main_postgres_sql_db sh -c "bash db_importer_v2.sh"

sudo docker rm -f tmp_postgres_sql_db

sudo docker ps