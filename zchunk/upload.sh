#!/bin/sh
export NAME=ulikoehler/zchunk
export VERSION=1.1.2-fedora30
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
