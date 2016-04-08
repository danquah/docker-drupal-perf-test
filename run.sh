#!/bin/sh
docker run --rm danquah/drupal-perf-test
docker run --rm -v ~/storage:/storage danquah/drupal-perf-test