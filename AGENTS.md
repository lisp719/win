# AGENTS.md

## プロジェクト概要

- Windows/WSL開発環境セットアップ自動化。Ansible + Task + Docker Composeを使用。
- Windows: `setup_win.ps1` / WSL: `fedora/setup_wsl.sh` or `ubuntu/setup_wsl.sh`

## コーディングルール

- ファイル名: スネークケース（`setup_wsl.sh`）
- YAML: インデント2スペース
- Ansibleタスク名: 動詞から始める（"Install...", "Copy..."）
- シェルスクリプト: `set -e` でエラー時に終了

## アーキテクチャ

```
settings/common/ → settings/wsl/ → tasks/wsl_common.yaml → fedora/ or ubuntu/
```

## テスト

- dry-run: `task check-fedora` / `task check-ubuntu`

## 禁止

- ハードコードされたパス（`~` または変数を使用）
- シークレットの平文コミット

## コマンド

- Fedora適用: `task run-fedora`
- Ubuntu適用: `task run-ubuntu`
- Docker: `docker compose run fedora` / `docker compose run ubuntu`
