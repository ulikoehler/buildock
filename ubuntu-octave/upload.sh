#!/bin/sh
export NAME=ulikoehler/ubuntu-octave
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
