#!/bin/sh
export NAME=ulikoehler/ubuntu-gcc-cmake
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
