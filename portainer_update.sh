#!/bin/bash

#This file is to update portainer by removing and re downloading it

#Stop and Remove portainer containers
sudo docker stop portainer && sudo docker rm portainer

#Remove the old images - you may need to run docker images first
sudo docker rmi portainer/portainer-ce

sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
