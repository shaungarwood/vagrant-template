#!/usr/bin/env bash

cp /vagrant/.dircolors /home/vagrant/.dircolors

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y vim telnet curl wget git
