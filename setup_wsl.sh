#! /bin/sh

set -e

# package
sudo apt update
sudo apt install -y \
  fd-find \
  fzf \
  ranger \
  tig

# etc
mkdir -p ~/workspace

echo success
