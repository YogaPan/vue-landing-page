#!/bin/bash

set -ex

SH_DIR="$(cd "$(dirname "$0")"; pwd -P)"
ROOT_DIR=$(dirname $SH_DIR)
BUILD_DIR=$ROOT_DIR/build

source $BUILD_DIR/build-image.properties

docker run -dp 8080:8080 $IMAGE_NAME