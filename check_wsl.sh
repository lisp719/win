#! /bin/sh

set -e

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

case "$#:$*" in
  0:) MISE_ACTION=outdated; set -- --check --diff ;;
  1:--apply) MISE_ACTION=upgrade; set -- -v ;;
  *)
    echo "Usage: $0 [--apply]" >&2
    exit 1
    ;;
esac

. /etc/os-release

case "$ID" in
  arch) OS=archlinux ;;
  fedora|ubuntu) OS=$ID ;;
  *)
    echo "Unsupported OS: $ID" >&2
    exit 1
    ;;
esac

cd "$SCRIPT_DIR/$OS"
ansible-playbook wsl.yaml "$@"
"$HOME/.local/bin/mise" "$MISE_ACTION" --global
