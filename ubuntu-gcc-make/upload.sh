#!/bin/sh
export NAME=ulikoehler/ubuntu-gcc-make
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:22.04 .
docker push ${NAME}:${VERSION}
docker push ${NAME}:22.04
