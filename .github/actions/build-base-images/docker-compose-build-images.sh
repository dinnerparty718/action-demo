#!/usr/bin/env bash
set -xeEuo pipefail
#trap 'RC=$?; echo [error] exit code $RC running $BASH_COMMAND; exit $RC' ERR

# script directory
HERE="$(cd "$(dirname $0)" && pwd)"
cd "${HERE}"

# echo $API_KEY
echo "Building base images..."

# bringing up docker registry on localhost:5000
if ! docker ps -q -f name=registry -f status=running | grep '^[0-9a-fA-F]\{12\}$' >/dev/null; then
  docker run --rm -d -p 5000:5000 --name registry registry:2
fi


"${HERE}/docker-compose.sh" -f "${HERE}/docker-compose-build-images.yml" build
"${HERE}/docker-compose.sh" -f "${HERE}/docker-compose-build-images.yml" push

# check if registry is running
docker ps -q -f name=registry