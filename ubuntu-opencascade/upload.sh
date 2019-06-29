#!/bin/sh
export NAME=ulikoehler/ubuntu-opencascade
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
