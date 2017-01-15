#!/usr/bin/env bash
set -e


docker build -t test/geoserver .
docker run -p8080:8080 -v$NC_GEOSERVER_DATA_DIR/geoserver:/geoserver_data:rw test/geoserver
