#!/bin/sh
export NAME=ulikoehler/gcc-make
export VERSION=18.06
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}