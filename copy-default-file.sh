#!/bin/bash
set -eu

# docker image
IMAGE=alpine:3.20

# path of source file on container
SRC_FILEPATH=/etc/resolv.conf

# path of destination file on local
DST_FILEPATH=./client/resolv.conf

CONTAINER_NAME=tmp-container
docker run --name $CONTAINER_NAME -d $IMAGE
docker cp $CONTAINER_NAME:$SRC_FILEPATH $DST_FILEPATH
docker stop $CONTAINER_NAME
docker rm -f $(docker ps -aq --filter "name=$CONTAINER_NAME")
