#! /bin/sh

set -e

export LANG=C.UTF-8

if [ "$(id -u)" -eq 0 ]; then
  pacman -Syu --noconfirm
  pacman -S --noconfirm ansible
  ansible-playbook wsl_root.yaml -v
else
  ansible-playbook wsl.yaml -v
fi
