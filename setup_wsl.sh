#! /bin/sh

set -e

# sudoers
echo "${USER} ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/${USER}

# package
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update
sudo apt install -y \
  fd-find \
  fzf \
  git \
  ranger \
  tig

# git
cp ./settings/.gitconfig ~/.gitconfig
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"

# etc
cp ./wsl/.bashrc ~/.bashrc
cp ./wsl/.byobu/profile.tmux ~/.byobu/profile.tmux
mkdir -p ~/workspace

echo success
