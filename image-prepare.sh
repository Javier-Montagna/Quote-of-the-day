#!/usr/bin/env bash
set -e

#Build image
docker build -f Dockerfile --no-cache=true -t $1