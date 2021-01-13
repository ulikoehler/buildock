#!/bin/sh
export NAME=ulikoehler/node-mongo-tools
export VERSION=lts
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:14 .
docker push ${NAME}:${VERSION}
docker push ${NAME}:14
