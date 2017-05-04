#!/usr/bin/env bash
set -e


source environment.sh


docker build \
    --tag "$image_name" \
    .
docker run \
    --publish 18080:8080 \
    --volume $NC_GEOSERVER_DATA_DIR/geoserver:/geoserver_data:rw \
    $image_name
