#!/bin/sh
export NAME=ulikoehler/node-inkscape-gm
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
