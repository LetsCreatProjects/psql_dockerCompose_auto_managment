#!/bin/bash

docker rm -f $(docker ps -aq) && docker system prune -y
sudo docker rmi $(sudo docker images -aq) --force 

sudo docker ps && sudo docker images && sudo docker volume