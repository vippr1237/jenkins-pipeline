#!/bin/bash

# Copy new jar file to the build location
cp -f devops_demo/target/*.jar jenkins/build/

echo "*****************************"
echo "**Building docker image******"
echo "*****************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build
