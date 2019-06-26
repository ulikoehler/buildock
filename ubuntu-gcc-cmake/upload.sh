#!/bin/sh
export NAME=ulikoehler/gcc-cmake
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
