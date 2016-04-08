#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
STORAGE="${DIR}/storage"

docker pull danquah/drupal-perf-test

echo "Preparing storage dir ${STORAGE}"
sudo rm -fr "${STORAGE}"
mkdir "${STORAGE}"

echo "Testing local storage"
docker run -ti --rm danquah/drupal-perf-test
echo
echo "Testing volume mount using ${STORAGE}"
docker run -ti --rm -v "${STORAGE}:/storage" danquah/drupal-perf-test