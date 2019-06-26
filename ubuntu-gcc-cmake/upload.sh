#!/bin/sh
export NAME=ulikoehler/gcc-cmake
export VERSION=18.06
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
