#!/usr/bin/env bash
set -euo pipefail

command -v docker >/dev/null 2>&1 || {
    echo >&2 "This script requires the docker to be installed"
    exit 1
}

SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t lskjs/dind:latest "$SCRIPT_ROOT/.."
docker build -t lskjs/dind:compose -f ./compose.Dockerfile "$SCRIPT_ROOT/.." 

# docker rmi -f $(docker images -q --filter "dangling=true")

docker push lskjs/dind:latest
docker push lskjs/dind:compose