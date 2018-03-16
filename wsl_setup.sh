#! /bin/sh

set -e

# resolv.conf
sudo rm /etc/resolv.conf
sudo sh -c "echo 'nameserver 8.8.8.8' > /etc/resolv.conf"
cat /etc/resolv.conf

# zypper
sudo zypper install -y the_silver_searcher tig vim-data

# ssh
mkdir -p ~/.ssh
cp /mnt/c/sync/.ssh/* ~/.ssh/
chmod 600 ~/.ssh/config ~/.ssh/id_rsa

# git
git config --global user.name "lisp719"
git config --global user.email "lisp719@gmail.com"
git config --global push.default simple

# vim
curl 'http://vim-bootstrap.com/generate.vim' -d 'editor=vim' > ~/.vimrc

# gibo
mkdir -p ~/bin
curl -L https://raw.github.com/simonwhitaker/gibo/master/gibo -o ~/bin/gibo
chmod +x ~/bin/gibo
gibo -u

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
