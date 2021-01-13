#!/bin/sh
export NAME=ulikoehler/ubuntu-gcc-make
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:20.04 .
docker push ${NAME}:${VERSION}
docker push ${NAME}:20.04
