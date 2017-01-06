FROM tomcat:9

MAINTAINER Kor de Jong <k.dejong@geoneric.eu>

# Inspired by thklein/geoserver

ENV GEOSERVER_VERSION=2.10.1 \
    GEOSERVER_DATA_DIR="/geoserver_data"

RUN cd /usr/local/tomcat/webapps && \
    wget http://sourceforge.net/projects/geoserver/files/GeoServer/$GEOSERVER_VERSION/geoserver-$GEOSERVER_VERSION-war.zip && \
    unzip -q geoserver-$GEOSERVER_VERSION-war.zip && \
    rm geoserver-$GEOSERVER_VERSION-war.zip && \
    mkdir $GEOSERVER_DATA_DIR

VOLUME $GEOSERVER_DATA_DIR
