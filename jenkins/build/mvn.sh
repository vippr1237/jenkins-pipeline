#!/bin/bash

echo "********************"
echo "****Building jar****"
echo "********************"

docker run --rm -v $PWD/devops_demo:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.8.1-adoptopenjdk-11 "$@"
