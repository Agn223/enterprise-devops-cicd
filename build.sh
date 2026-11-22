#!/bin/bash

set -e

VERSION=${1:?Please provide a version}

echo "Building version: $VERSION"

docker build -t enterprise-devops-cicd:$VERSION .

echo "Image built successfully"