#!/bin/bash
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
docker build -t admir93-docker .
docker run -p 8081:8080 -d --name nodejs-app1 --restart always admir93-docker
docker run -p 8082:8080 -d --name nodejs-app2 --restart always admir93-docker
docker run -p 8083:8080 -d --name nodejs-app3 --restart always admir93-docker
docker run -p 8084:8080 -d --name nodejs-app4 --restart always admir93-docker
docker run -p 8085:8080 -d --name nodejs-app5 --restart always admir93-docker
docker run -p 8086:8080 -d --name nodejs-app6 --restart always admir93-docker
