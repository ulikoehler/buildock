#!/bin/sh
export NAME=ulikoehler/node-inkscape-gm
export VERSION=14
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:lts .
docker push ${NAME}:${VERSION}
docker push ${NAME}:lts
