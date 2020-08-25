#! /bin/sh

set -e

# symlink
ln -fns /mnt/c/code/ ~/code

# resolv.conf
sudo rm /etc/resolv.conf || : && echo nameserver 8.8.8.8 | sudo tee /etc/resolv.conf

# bash
cp ~/.profile ~/.bash_profile
echo "\nexport VTE_CJK_WIDTH=1\n" >> ~/.bash_profile

# apt
sudo sed -i -e "s%http://archive.ubuntu.com/ubuntu/%http://linux.yz.yamagata-u.ac.jp/ubuntu/%g" /etc/apt/sources.list
sudo apt update
sudo apt install -y \
  atool \
  make \
  ranger \
  silversearcher-ag \
  tig \
  w3m

# ssh
mkdir -p ~/.ssh
cp /mnt/c/sync/.ssh/* ~/.ssh/
chmod 600 ~/.ssh/*

# git
git config --global user.name "lisp719"
git config --global user.email "lisp719@gmail.com"
git config --global push.default current
git config --global alias.s "status -bs"

# vim
curl 'http://vim-bootstrap.com/generate.vim' -d 'editor=vim' > ~/.vimrc

# gibo
mkdir -p ~/bin
curl -L https://raw.github.com/simonwhitaker/gibo/master/gibo -o ~/bin/gibo
chmod +x ~/bin/gibo

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
