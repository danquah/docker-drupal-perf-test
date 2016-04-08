#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

echo "Testing local storage"
docker run --rm danquah/drupal-perf-test
echo
echo "Testing volume mount"
docker run --rm -v ~/storage:/storage danquah/drupal-perf-test