#!/bin/bash
docker build -f $1/Dockerfile . -t drone-oca-mqt:$1