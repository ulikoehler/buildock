#!/bin/sh
export NAME=ulikoehler/zchunk
export VERSION=1.1.2-fedora32
docker build -t ${NAME}:${VERSION} -t ${NAME}:latest .
docker push ${NAME}:${VERSION}
docker push ${NAME}:latest
