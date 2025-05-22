#!/bin/bash
set -e

# Get package name and app directory
PACKAGE="$1"
APP_NAME="$2"

if [[ -z "$PACKAGE" || -z "$APP_NAME" ]]; then
  echo "Usage: $0 <composer-package> <app-name>"
  echo "Example: $0 slim/slim-skeleton my-app"
  exit 1
fi

# Ensure local output directory exists
mkdir -p app

# Build the Docker image (only once unless you change it)
docker build -f Dockerfile.create-project -t composer-creator .

# Run the composer create-project inside the container
docker run --rm \
  -v "$(pwd)/app":/export \
  composer-creator \
  create-project "$PACKAGE" "/export/$APP_NAME"
