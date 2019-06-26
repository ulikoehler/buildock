#!/bin/sh
export NAME=ulikoehler/ubuntu-gcc-cmake-boost
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
