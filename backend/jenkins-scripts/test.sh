#!/bin/bash

echo "*********************"
echo "***testing backend***"
echo "*********************"

docker run \
--rm \
--env DB_USER=$DB_CREDENTIALS_USR \
--env DB_PASSWORD=$DB_CREDENTIALS_PSW \
--env DB_NAME=$DB_NAME \
-v /backend/node_modules \
backend:$BUILD_NUMBER \
migrate-mongo up && npm test
