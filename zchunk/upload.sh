#!/bin/sh
export NAME=ulikoehler/zchunk
export VERSION=30-1.0
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
