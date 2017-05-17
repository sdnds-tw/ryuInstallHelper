# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 512
  end

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y git python-pip python3-pip build-essential python-dev python3-dev
    git clone --depth 1 https://github.com/osrg/ryu.git
    sudo pip install pip --upgrade
    sudo pip install -r /home/ubuntu/ryu/tools/pip-requires
    cd ryu; sudo python ./setup.py install
  SHELL
end
