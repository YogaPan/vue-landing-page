#!/bin/bash

set -ex

SH_DIR="$(cd "$(dirname "$0")"; pwd -P)"
ROOT_DIR=$(dirname $SH_DIR)
BUILD_DIR=$ROOT_DIR/build
DOCKERFILE=$BUILD_DIR/Dockerfile

source $BUILD_DIR/build-image.properties

docker build -t $IMAGE_NAME --file ./build/Dockerfile $ROOT_DIR