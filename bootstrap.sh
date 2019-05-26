#!/usr/bin/env bash

user="vagrant"

# for dark transparent terminals
cp /vagrant/.dircolors /home/vagrant/.dircolors

# basic tools
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y vim telnet curl wget git tree

# docker
apt-get -y install apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose
usermod -aG docker vagrant

# reboot after system update/upgrade
reboot
