#!/bin/sh
export NAME=ulikoehler/node-inkscape-gm
export VERSION=12
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
