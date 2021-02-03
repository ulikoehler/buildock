#!/bin/sh
export NAME=ulikoehler/redmine-with-compiler
export VERSION=alpine
docker build -t ${NAME}:${VERSION} .
docker push ${NAME}:${VERSION}
