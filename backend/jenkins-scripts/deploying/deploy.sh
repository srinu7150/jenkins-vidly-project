#!/bin/bash

echo "************************************"
echo "***uploading backend to dockerhub***"
echo "************************************"

echo "loging into dockerhub"


docker tag backend:$BUILD_NUMBER srinu7150/jenkins-vidly-backend:$BUILD_NUMBER

echo $DOCKER_CREDENTIALS_PSW | docker login -u $DOCKER_CREDENTIALS_USR --password-stdin
