#! /bin/sh

set -e

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

. /etc/os-release

case "$ID" in
  arch)
    DIR="archlinux"
    ;;
  fedora)
    DIR="fedora"
    ;;
  ubuntu)
    DIR="ubuntu"
    ;;
  *)
    echo "Unsupported OS: $ID" >&2
    exit 1
    ;;
esac

cd "$SCRIPT_DIR/$DIR"
exec sh ./setup_wsl.sh
