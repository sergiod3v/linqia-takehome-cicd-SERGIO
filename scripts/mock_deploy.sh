#!/usr/bin/env bash
set -e

IMAGE="$1"
if [[ -z "$IMAGE" ]]; then
  echo "Usage: ./scripts/mock_deploy.sh <image>"
  exit 1
fi

echo "Pulling image $IMAGE..."
docker pull "$IMAGE"

echo "Running container to simulate deployment..."
docker run --rm "$IMAGE" 2 3
