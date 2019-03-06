#!/bin/bash

set -e

DOCKERHUB_USER=$1
VERSION=$2

docker build --build-arg VERSION=$VERSION  -t $DOCKERHUB_USER/my-ether-wallet:$VERSION -f Dockerfile.nginx .
docker push $DOCKERHUB_USER/my-ether-wallet:$VERSION
docker tag $DOCKERHUB_USER/my-ether-wallet:$VERSION $DOCKERHUB_USER/my-ether-wallet:latest
docker push $DOCKERHUB_USER/my-ether-wallet:latest