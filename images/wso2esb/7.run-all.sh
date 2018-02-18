#!/usr/bin/env bash
# Clean up container / volume / image
#docker stop nginx-lbl
#docker rm nginx-lbl
#docker volume rm conf-lbl
#docker rmi kraydel:v1.0.0-rc1



# Docker image creation
#docker build . -t kraydel:v1.0.0-rc1

# Run container
#docker run -d -v conf-lbl:/etc/nginx --name nginx-lbl kraydel:v1.0.0-rc1
sh 1.delete-container.sh
sh 2.delete-volumes.sh
sh 3.delete-image.sh
sh 4.create-volumes.sh
sh 5.create-image.sh
sh 6.create-container.sh