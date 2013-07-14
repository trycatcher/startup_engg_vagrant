#/usr/bin/env bash

echo "Updating Ubuntu ..."
apt-get update >/dev/null 2>&1
echo "Installing necessary tools ..."
apt-get install -y python-software-properties python g++ make >/dev/null 2>&1
#ncurses-term is needed for terminfo definitions
#curl is needed for installing node packages via nvm script
apt-get install -y ncurses-term curl git>/dev/null 2>&1
echo "Installing Heroku toolbelt"
wget -O install-heroku.sh https://toolbelt.heroku.com/install-ubuntu.sh
chmod +x install-heroku.sh
./install-heroku.sh
echo "Generating SSH keys ..."
ssh-keygen -t rsa
echo "Installing dev environment for Startup_Engg@Coursera ...."
#Need this to get .nvm folder in /home/vagrant. Otherwise this gets downloaded
# /root, because this script is run with superuser privileges
export HOME=/home/vagrant
git clone https://github.com/trycatcher/setup.git
chmod +x setup/setup.sh
./setup/setup.sh   
echo "Cleaning up ..."
rm install-heroku.sh install-nvm.sh
rm -r setup
echo "Done!"
