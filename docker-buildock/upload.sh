#!/bin/sh
export NAME=ulikoehler/docker-buildock
export VERSION=stable
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
