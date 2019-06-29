#!/bin/sh
export NAME=ulikoehler/ubuntu-opencascade-rapidjson
export VERSION=latest
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
