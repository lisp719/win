## プロジェクト概要

- Windows/WSL開発環境セットアップ自動化
- Ansible + Task + Docker Composeを使用

## テスト

- docker compose up -d fedora

- docker compose exec fedora sh ./setup_wsl.sh
- docker compose exec fedora ansible-playbook wsl.yaml -v
- docker compose exec fedora ansible-playbook wsl.yaml --check --diff
