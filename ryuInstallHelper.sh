#!/bin/sh
# This is a quick install script for ryu and dependencies.

# Check Permission
# test $(id -u) -ne 0 && echo "This script must be run as root" && exit 0

# On Ubuntu 12.04 LTS
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
sudo apt-get install git python-pip build-essential python-dev libxml2-dev libxslt1-dev python-paramiko python-webob python-routes python-eventlet -y

# Upgrade pip
sudo pip install -U pip six

# install setuptools
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python
sudo rm -rf setuptools-*.zip

echo "##############################################################################"
echo "#                         DOWNLOADING RYU FROM GIT                           #"
echo "##############################################################################"

git clone --depth 1 https://github.com/osrg/ryu.git

echo "##############################################################################"
echo "#                              BUILDING RYU                                  #"
echo "##############################################################################"

cd ryu; sudo python ./setup.py install

echo "##############################################################################"
echo "#                                    DONE                                    #"
echo "##############################################################################"
