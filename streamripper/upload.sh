#!/bin/sh
export NAME=ulikoehler/streamripper
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:20.04 .
docker push ${NAME}:${VERSION}
docker push ${NAME}:20.04
