#!/bin/bash

# create directories
mkdir $(pwd)/data
mkdir $(pwd)/data/hub

mkdir $(pwd)/data/redis-master
mkdir $(pwd)/data/redis-master/tmp
mkdir $(pwd)/data/redis-master/logs
mkdir $(pwd)/data/redis-master/data

mkdir $(pwd)/data/redis-slave-1
mkdir $(pwd)/data/redis-slave-1/tmp
mkdir $(pwd)/data/redis-slave-1/logs
mkdir $(pwd)/data/redis-slave-1/data

mkdir $(pwd)/data/redis-slave-2
mkdir $(pwd)/data/redis-slave-2/tmp
mkdir $(pwd)/data/redis-slave-2/logs
mkdir $(pwd)/data/redis-slave-2/data

mkdir $(pwd)/data/redis-sentinel-1
mkdir $(pwd)/data/redis-sentinel-1/tmp
mkdir $(pwd)/data/redis-sentinel-1/logs
mkdir $(pwd)/data/redis-sentinel-1/data
mkdir $(pwd)/data/redis-sentinel-1/conf

mkdir $(pwd)/data/redis-sentinel-2
mkdir $(pwd)/data/redis-sentinel-2/tmp
mkdir $(pwd)/data/redis-sentinel-2/logs
mkdir $(pwd)/data/redis-sentinel-2/data
mkdir $(pwd)/data/redis-sentinel-2/conf

mkdir $(pwd)/data/redis-sentinel-3
mkdir $(pwd)/data/redis-sentinel-3/tmp
mkdir $(pwd)/data/redis-sentinel-3/logs
mkdir $(pwd)/data/redis-sentinel-3/data
mkdir $(pwd)/data/redis-sentinel-3/conf

mkdir $(pwd)/data/producers
mkdir $(pwd)/data/gateways
mkdir $(pwd)/data/caddy

# assign permissions
chmod o+w $(pwd)/data
chmod o+w $(pwd)/data/hub

chmod o+w $(pwd)/data/redis-master
chmod o+w $(pwd)/data/redis-master/tmp
chmod o+w $(pwd)/data/redis-master/logs
chmod o+w $(pwd)/data/redis-master/data

chmod o+w $(pwd)/data/redis-slave-1
chmod o+w $(pwd)/data/redis-slave-1/tmp
chmod o+w $(pwd)/data/redis-slave-1/logs
chmod o+w $(pwd)/data/redis-slave-1/data

chmod o+w $(pwd)/data/redis-slave-2
chmod o+w $(pwd)/data/redis-slave-2/tmp
chmod o+w $(pwd)/data/redis-slave-2/logs
chmod o+w $(pwd)/data/redis-slave-2/data

chmod o+w $(pwd)/data/redis-sentinel-1
chmod o+w $(pwd)/data/redis-sentinel-1/tmp
chmod o+w $(pwd)/data/redis-sentinel-1/logs
chmod o+w $(pwd)/data/redis-sentinel-1/data
chmod o+w $(pwd)/data/redis-sentinel-1/conf

chmod o+w $(pwd)/data/redis-sentinel-2
chmod o+w $(pwd)/data/redis-sentinel-2/tmp
chmod o+w $(pwd)/data/redis-sentinel-2/logs
chmod o+w $(pwd)/data/redis-sentinel-2/data
chmod o+w $(pwd)/data/redis-sentinel-2/conf

chmod o+w $(pwd)/data/redis-sentinel-3
chmod o+w $(pwd)/data/redis-sentinel-3/tmp
chmod o+w $(pwd)/data/redis-sentinel-3/logs
chmod o+w $(pwd)/data/redis-sentinel-3/data
chmod o+w $(pwd)/data/redis-sentinel-3/conf

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
