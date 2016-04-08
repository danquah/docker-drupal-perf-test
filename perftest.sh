#!/usr/bin/env bash
echo "Downloading Drupal 7"
drush dl -q -y --drupal-project-rename=storage/drupal drupal-7
cd storage/drupal
echo "Performing site install"
time drush si standard -y --db-url=sqlite://sites/default/files/.ht.sqlite