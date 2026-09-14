#!/bin/bash

# Check if the hostname is "devbox"
if [ "$(hostname)" == "devbox" ]; then
  cd /home/britmob/maxmob-sh-site/
  git stash
  STATUS="$(git pull | grep "up to date" | wc -l)"

  if [ $STATUS -eq 0 ]; then
    docker build . --tag jekyll-run
    docker compose up -d

  fi
else
  docker build . --tag jekyll-run
  docker compose up -d
fi