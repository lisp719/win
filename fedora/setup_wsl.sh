#! /bin/sh

set -e

sudo dnf install -y ansible
ansible-playbook wsl.yaml -v
