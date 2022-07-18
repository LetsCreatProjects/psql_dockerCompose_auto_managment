#!/bin/bash

docker rm -f $(docker ps -aq) && docker system prune -y
sudo docker rmi $(sudo docker images -aq) --force 

docker network prune

sudo docker ps && sudo docker images && sudo docker volume

