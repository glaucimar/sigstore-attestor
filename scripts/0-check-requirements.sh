#!/usr/bin/env bash 
set -xeo pipefail
SCRIPTDIR=$(dirname "$0")
BASEDIR="$SCRIPTDIR/.."

command -v docker || exit "Docker not found"
command -v go || exit "Go not found"

source ./env

if [ ! -n "${DOCKER_USER}" ]; then
	echo "Need to set DOCKER_USER to a valid value"
fi
