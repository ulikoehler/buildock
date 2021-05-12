#!/bin/sh
export NAME=ulikoehler/mkpasswd
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:34 .
docker push ${NAME}:${VERSION}
docker push ${NAME}:34
