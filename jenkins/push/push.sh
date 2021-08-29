#!/bin/bash

echo "**********************"
echo "** Pushing image *****"
echo "**********************"

IMAGE="jenkins-pipeline"

echo "** Logging in ***"
docker login -u coangha21 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG coangha21/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push coangha21/$IMAGE:$BUILD_TAG

