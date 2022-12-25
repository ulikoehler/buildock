#!/bin/sh
export NAME=ulikoehler/dropbearkey
export VERSION=3.17
docker build -t ${NAME}:${VERSION} -t ${NAME}:latest .
docker push ${NAME}:${VERSION}
docker push ${NAME}:latest
