#!/bin/sh

DOCKER_IMAGE_NAME=redis
DOCKER_TAG=latest
DOCKER_CONTAINER_NAME=redis

docker run -d --name $DOCKER_CONTAINER_NAME \
  -p 6379:6379 \
  -e "TZ=Asia/Tokyo" \
  -v `pwd`/data:/data \
  $DOCKER_IMAGE_NAME:$DOCKER_TAG
