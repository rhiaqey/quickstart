#!/bin/bash

if command -v docker-compose >/dev/null 2>&1; then
  if [ "$#" -eq 1 ] && [ "$1" == "down" ]; then
    docker-compose down
  else
    docker-compose up --pull always -d --timestamps --remove-orphans
  fi
else
  if [ "$#" -eq 1 ] && [ "$1" == "down" ]; then
    docker compose down
  else
    docker compose up --pull always -d --timestamps --remove-orphans
  fi
fi
