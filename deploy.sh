#!/bin/bash

set -e

VERSION=${1:-v1}
export APP_VERSION=$VERSION

echo "Deploying version: $VERSION"

docker compose config -q
docker compose up -d --no-build

docker compose ps

echo "Deployment completed: $VERSION"