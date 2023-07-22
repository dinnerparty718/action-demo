#!/usr/bin/env bash
set -xeEuo pipefail
#trap 'RC=$?; echo [error] exit code $RC running $BASH_COMMAND; exit $RC' ERR

# script directory
HERE="$(cd "$(dirname $0)" && pwd)"
cd "${HERE}"

echo $API_KEY
echo "Building base images..."


"${HERE}/docker-compose.sh" -f "${HERE}/docker-compose-build-images.yml" build
# "${HERE}/docker-compose.sh" -f "${HERE}/docker-compose-build-images.yml" push
