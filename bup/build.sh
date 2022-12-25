#!/bin/bash
rm -rf bup # Remove any old versions that might be present
git clone -b 0.33 --depth 1 https://github.com/bup/bup
export NAME=ulikoehler/bup
export VERSION=0.33-alpine3.17
export SHORTVERSION=0.33
docker build -t ${NAME}:${VERSION} .
# Create additional tags
docker image tag ${NAME}:${VERSION} ${NAME}:${SHORTVERSION}
docker image tag ${NAME}:${VERSION} ${NAME}:latest
# Push to repo
docker push ${NAME}:${VERSION}
docker push ${NAME}:${SHORTVERSION}
docker push ${NAME}:latest
