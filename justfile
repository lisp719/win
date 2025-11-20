# https://just.systems

default:
    echo 'Hello, world!'

[working-directory: 'fedora']
fedora-check:
    ansible-playbook wsl.yaml --check --diff

[working-directory: 'fedora']
fedora-run:
    ansible-playbook wsl.yaml -v

[working-directory: 'ubuntu']
ubuntu-check:
    ansible-playbook wsl.yaml --check --diff

[working-directory: 'ubuntu']
ubuntu-run:
    ansible-playbook wsl.yaml -v
