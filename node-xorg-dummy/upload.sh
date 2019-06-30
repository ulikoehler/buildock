#!/bin/sh
export NAME=ulikoehler/node-xorg-dummy
export VERSION=12
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
