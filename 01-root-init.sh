#!/bin/bash

# run these once (optional)
# apt-get update
# apt-get upgrade -y
# update-ca-certificates

# Run this as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# option -s gives Illegal Option -s
# read -p "Your IP: " ip

# validate IP format
#if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
#  echo "Valid IP"
#else
#  echo "Invalid IP format" 1>&2
#  exit 1
#fi

# option -s gives Illegal Option -s
# read -p "New user's password: " password

PASSWORD="$(openssl rand -base64 12)"

# create a user with a home directory
useradd -m rhiaqey -s /bin/bash -u 1001 -g docker -p "${PASSWORD}"

sysctl vm.overcommit_memory=1

ufw default deny incoming
ufw default allow outgoing
ufw allow http
ufw allow https
# ufw allow from "$ip"

ufw enable

# additional software installation
apt install gh # github

echo "New user created with password: ${PASSWORD}"
