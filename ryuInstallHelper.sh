#!/bin/sh
# This is a quick install script for ryu and dependencies.

# Check Permission
# test $(id -u) -ne 0 && echo "This script must be run as root" && exit 0

# On Ubuntu 14.04 LTS
# Do NOT use 512MB VM to compile ryu source code since there is not enough memory to compile source code
# Use SI standard, if you need more info, please try "man units"
total_memory=$(free -b | grep 'Mem' | awk '{print $2}')
minimum_memory=512000
test $total_memory -lt $minimum_memory && echo "Minimum memory requirement is 512MB" && exit 0

# Get the latest package lists
sudo apt-get update


echo "##############################################################################"
echo "#                          RYU DEPENDENCY CHECK                              #"
echo "##############################################################################"
sudo apt-get install -y --force-yes git python-pip python3-pip build-essential python-dev python3-dev

echo "##############################################################################"
echo "#                         DOWNLOADING RYU FROM GIT                           #"
echo "##############################################################################"

git clone --depth 1 https://github.com/osrg/ryu.git
# Upgrade pip
sudo pip install pip six --upgrade

sudo pip install -r ryu/tools/pip-requires

echo "##############################################################################"
echo "#                              BUILDING RYU                                  #"
echo "##############################################################################"

cd ryu; sudo python ./setup.py install

echo "##############################################################################"
echo "#                         Try to use ./start_ryu.sh                          #"
echo "#                                    DONE                                    #"
echo "##############################################################################"

