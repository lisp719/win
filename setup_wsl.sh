#! /bin/sh

set -e

# package
sudo apt update
sudo apt install -y \
  fd-find \
  fzf \
  ranger \
  tig

# git
cp ./settings/.gitconfig ~/.gitconfig
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"

# etc
cp ./wsl/.bashrc ~/.bashrc
mkdir -p ~/workspace

echo success
