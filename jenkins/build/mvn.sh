#!/bin/bash

echo "*********************"
echo "****Build jar********"
echo "*******************"
WORKSPACE=/home/locdv/jenkins-data/jenkins_home/workspace/pipeline-maven-docker

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.8 "$@"
