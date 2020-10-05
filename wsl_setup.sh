#! /bin/sh

set -e

# resolv.conf
sudo rm /etc/resolv.conf || : && echo nameserver 8.8.8.8 | sudo tee /etc/resolv.conf

# apt
sudo sed -i.bak -e 's%http://\S\+%mirror://mirrors.ubuntu.com/mirrors.txt%g' /etc/apt/sources.list
sudo apt update
sudo apt install -y \
  atool \
  ranger \
  tig

# ssh
mkdir -p ~/.ssh
cp /mnt/c/sync/.ssh/* ~/.ssh/
chmod 600 ~/.ssh/*

# git
cp .gitconfig ~/.gitconfig

# gibo
mkdir -p ~/bin
curl -L https://raw.github.com/simonwhitaker/gibo/master/gibo -o ~/bin/gibo
chmod +x ~/bin/gibo
