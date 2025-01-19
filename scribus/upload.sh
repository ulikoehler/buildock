#!/bin/sh
export NAME=ulikoehler/scribus
export VERSION=1.6.1 # Ubuntu 24.04
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
