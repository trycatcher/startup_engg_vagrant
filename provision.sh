#/usr/bin/env bash

echo "Setting up: Installing node.js and npm"
apt-get update >/dev/null 2>&1
apt-get install -y python-software-properties python g++ make >/dev/null 2>&1
add-apt-repository ppa:chris-lea/node.js >/dev/null 2>&1
apt-get update >/dev/null 2>&1
apt-get install -y nodejs >/dev/null 2>&1
echo "Node version is `node --version`"
echo "Npm version is `npm --version`"
apt-get install -y git-core >/dev/null 2>&1
echo "`which git` `git --version`"
wget https://toolbelt.heroku.com/install-ubuntu.sh
chmod +x install-ubuntu.sh
./install-ubuntu.sh
echo "`which heroku` `heroku version`"
ssh-keygen -t rsa
#heroku keys:add username='abhik.rk@gmail.com' password='heroku41'
