#!/bin/bash

if command -v docker-compose >/dev/null 2>&1; then
  docker-compose up --pull always -d --timestamps --remove-orphans
else
  docker compose up --pull always -d --timestamps --remove-orphans
fi
