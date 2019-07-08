#!/bin/sh
export NAME=ulikoehler/ubuntu-octave
export VERSION=19.04
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
