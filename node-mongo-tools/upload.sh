#!/bin/sh
export NAME=ulikoehler/node-mongo-tools
export VERSION=12
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
