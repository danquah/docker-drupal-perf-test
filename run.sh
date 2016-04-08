#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

echo "Testing local storage"
docker run -ti --rm danquah/drupal-perf-test
echo
echo "Testing volume mount"
docker run -ti --rm -v ~/storage:/storage danquah/drupal-perf-test