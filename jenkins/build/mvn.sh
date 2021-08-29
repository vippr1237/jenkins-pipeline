#!/bin/bash

echo "********************"
echo "****Building jar****"
echo "********************"
WORKSPACE=/var/lib/jenkins/workspace/Jenkins-pipeline

docker run --rm -v $WORKSPACE/devops_demo:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.8.1-adoptopenjdk-11 "$@"
