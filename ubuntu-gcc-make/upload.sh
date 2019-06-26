#!/bin/sh
export NAME=ulikoehler/ubuntu-gcc-make
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
