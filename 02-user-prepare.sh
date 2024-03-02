#!/bin/bash

# create directories
mkdir $(pwd)/data
mkdir $(pwd)/data/hub
mkdir $(pwd)/data/redis
mkdir $(pwd)/data/redis/tmp
mkdir $(pwd)/data/redis/logs
mkdir $(pwd)/data/redis/data
mkdir $(pwd)/data/producers
mkdir $(pwd)/data/gateways
mkdir $(pwd)/data/caddy

# assign permissions
chmod o+w $(pwd)/data
chmod o+w $(pwd)/data/hub
chmod o+w $(pwd)/data/redis
chmod o+w $(pwd)/data/redis/tmp
chmod o+w $(pwd)/data/redis/logs
chmod o+w $(pwd)/data/redis/data
chmod o+w $(pwd)/data/producers
chmod o+w $(pwd)/data/gateways
chmod o+w $(pwd)/data/caddy

# export CR_PAT=YOUR_TOKEN
# echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

file=$(pwd)/.env
if [ ! -f $file ]; then
    # echo "File $file does not exist"
    cp $(pwd)/env.template $file
fi
