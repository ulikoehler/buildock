#!/bin/sh
export NAME=ulikoehler/ubuntu-opencascade-node
export VERSION=16
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
