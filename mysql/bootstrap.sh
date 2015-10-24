#!/bin/sh

DOCKER_IMAGE_NAME=mysql
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=mysql

docker run -d --name $DOCKER_CONTAINER_NAME \
  -e MYSQL_ROOT_PASSWORD=mysql \
  -p 3306:3306 \
  -e "TZ=Asia/Tokyo" \
  -v `pwd`/data:/var/lib/mysql \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
