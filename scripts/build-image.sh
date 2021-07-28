#!/bin/bash

set -ex

SH_DIR="$(cd "$(dirname "$0")"; pwd -P)"
ROOT_DIR=$(dirname $SH_DIR)
BUILD_DIR=$ROOT_DIR/build
DOCKERFILE=$BUILD_DIR/Dockerfile
NGINX_CONF=./nginx/nginx.conf

source $BUILD_DIR/build-image.properties

docker build \
  --build-arg NGINX_PORT=$NGINX_PORT \
  --build-arg NGINX_CONF=$NGINX_CONF \
  --tag $IMAGE_NAME \
  --file $DOCKERFILE \
  $ROOT_DIR