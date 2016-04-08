#!/usr/bin/env bash
echo "Downloading Drupal 7"
drush dl -y --drupal-project-rename=storage drupal-7
cd storage
echo "Performing site install"
time drush si standard -y --db-url=sqlite://sites/default/files/.ht.sqlite