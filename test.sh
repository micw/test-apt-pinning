#!/bin/bash

cat /apt-pin-docker1 > /etc/apt/preferences.d/docker-ce
echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" > /etc/apt/sources.list
apt-get update
apt-cache policy

exit 1
