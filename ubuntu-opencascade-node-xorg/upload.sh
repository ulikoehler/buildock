#!/bin/sh
export NAME=ulikoehler/ubuntu-opencascade-node-xorg
export VERSION=12
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
