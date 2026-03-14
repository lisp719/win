#! /bin/sh

set -e

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
ansible-playbook wsl.yaml -v
