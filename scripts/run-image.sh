#!/bin/bash

set -ex

SH_DIR="$(cd "$(dirname "$0")"; pwd -P)"
ROOT_DIR=$(dirname $SH_DIR)
BUILD_DIR=${ROOT_DIR}/build
  CONTAINER_NAME=vue-landing-page
  PORT=8080

source ${BUILD_DIR}/build-image.properties

RUNNING_CONTAINER_ID=$(docker ps --filter "name=${CONTAINER_NAME}" -aq)
if [[ -n $RUNNING_CONTAINER_ID ]]; then
  docker rm -f $RUNNING_CONTAINER_ID
fi

docker run \
  -dp ${PORT}:${PORT} -e "PORT=${PORT}" \
  --name $CONTAINER_NAME \
  $IMAGE_NAME