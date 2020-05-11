#!/bin/bash

# This image will generate a Docker container image to build Jenkins pipelines
docker build --build-arg USERID=`id jenkins -u` \
    --build-arg GROUPID=`id jenkins -g` \
    -t jenkins-agent:python-3.7 .
