#!/bin/bash

echo "*****************"
echo "**** Push image ********"
echo "*****************"

IMAGE="maven-project"

echo "** logging in **"
docker login -u locdv -p $PASS

echo "** tagging image **"
docker tag $IMAGE:$BUILD_TAG locdv/$IMAGE:$BUILD_TAG

echo "**** push ****"
docker push locdv/$IMAGE:$BUILD_TAG

