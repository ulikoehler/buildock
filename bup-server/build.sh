#!/bin/bash
export NAME=ulikoehler/bup-server
export SHORTVERSION=0.33
export VERSION=${SHORTVERSION}-alpine3.17
docker build -t ${NAME}:${VERSION} -t ${NAME}:${SHORTVERSION} -t ${NAME}:latest . 
# Push to repo
docker push ${NAME}:${VERSION}
docker push ${NAME}:${SHORTVERSION}
docker push ${NAME}:latest
