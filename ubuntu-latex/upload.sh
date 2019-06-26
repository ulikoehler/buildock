#!/bin/sh
export NAME=ulikoehler/ubuntu-latex
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
