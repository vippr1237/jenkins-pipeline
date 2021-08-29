#!/bin/bash

echo jenkins-pipeline > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth coangha@192.168.56.101:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish coangha@192.168.56.101:/tmp/publish
ssh -i /opt/prod coangha@192.168.56.101 "/tmp/publish"


