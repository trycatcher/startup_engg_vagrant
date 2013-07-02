#/usr/bin/env bash

echo "Setting up: Installing node.js and npm"
apt-get update >/dev/null 2>&1
apt-get install -y python-software-properties python g++ make >/dev/null 2>&1
add-apt-repository ppa:chris-lea/node.js >/dev/null 2>&1
apt-get update >/dev/null 2>&1
apt-get install -y nodejs >/dev/null 2>&1
