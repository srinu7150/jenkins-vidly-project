#!/bin/bash

echo "*********************"
echo "***testing backend***"
echo "*********************"

docker run \
--env DB_USER = "$DB_CREDENTIALS_USR" \
--env DB_PASSWORD = "$DB_CREDENTIALS_PSW" \
--env DB_NAME = "$DB_NAME" \
--entrypoint npm test \
backend:$BUILD_TAG