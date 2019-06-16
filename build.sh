#!/bin/bash
docker build --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
             --build-arg VCS_REF=`git rev-parse --short HEAD` \
             -f $1/Dockerfile . -t drone-oca-mqt:$1