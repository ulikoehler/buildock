#!/bin/sh
export NAME=ulikoehler/ubuntu-opencascade-node
export VERSION=18
docker build -t ${NAME}:${VERSION} -t ${NAME}:latest .
docker push ${NAME}:${VERSION}
docker push ${NAME}:latest
