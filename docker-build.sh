#!/bin/bash
docker build --build-arg ANDROID_SDK_VERSION=$1 --build-arg ANDROID_BUILD_TOOLS=$2 -t ${DOCKER_USERNAME}/androidsdk:$3 .