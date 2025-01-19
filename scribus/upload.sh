#!/bin/sh
export NAME=ulikoehler/scribus
export VERSION=1.6.1-build3 # Ubuntu 24.04
docker build -t ${NAME}:${VERSION} -t ${NAME}:latest .
docker push ${NAME}:${VERSION}
docker push ${NAME}:${VERSION}
