#! /bin/sh

set -e

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

case "$#:$*" in
  0:) MISE_ACTION=outdated; MDOTS_DRY_RUN=--dry-run; set -- --check --diff ;;
  1:--apply) MISE_ACTION=upgrade; MDOTS_DRY_RUN=; set -- -v ;;
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
(
  MDOTS_PATH=$("$HOME/.local/bin/mise" which mdots)
  CLONE_DIR=$(mktemp -d "${TMPDIR:-/tmp}/win-XXXXXX")
  git clone --quiet -- https://github.com/lisp719/win.git "$CLONE_DIR"
  cd "$CLONE_DIR"
  "$MDOTS_PATH" push --target wsl ${MDOTS_DRY_RUN:+"$MDOTS_DRY_RUN"}
)
