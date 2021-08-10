#!/bin/bash

set -ex

SH_DIR="$(cd "$(dirname "$0")"; pwd -P)"
ROOT_DIR=$(dirname $SH_DIR)

cd $ROOT_DIR
gcloud builds submit --config cloudbuild.yaml