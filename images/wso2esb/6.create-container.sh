#!/usr/bin/env bash
# Run container
docker run -d -v conf-wso2-esb-manager:/opt/wso2esb-5.0.0/repository/conf -p 9443:9443 -p 8280:8280 --name wso2-esb-manager --net net1 --ip 172.18.5.2 wso2-esb-manager:v1.0.0-rc1
#docker run --net net1 --ip 172.18.5.1 -it ubuntu