# https://just.systems

default:
    echo 'Hello, world!'

[working-directory: 'fedora']
check-fedora:
    ansible-playbook wsl.yaml --check --diff

[working-directory: 'ubuntu']
check-ubuntu:
    ansible-playbook wsl.yaml --check --diff

[working-directory: 'fedora']
run-fedora:
    ansible-playbook wsl.yaml -v

[working-directory: 'ubuntu']
run-ubuntu:
    ansible-playbook wsl.yaml -v
