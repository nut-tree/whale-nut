#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update
apt-get install software-properties-common -y
add-apt-repository ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y vim wget net-tools locales bzip2 build-essential libxt-dev libxtst-dev gnome-calculator gcc-9 g++-9 -y
apt-get clean -y

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-9

echo "generate locales für en_US.UTF-8"
locale-gen en_US.UTF-8
