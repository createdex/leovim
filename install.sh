#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$DOTFILES/$1"
  local dst="$2"
  if [ -e "$dst" ] || [ -L "$dst" ]; then
    echo "backing up $dst -> ${dst}.bak"
    mv "$dst" "${dst}.bak"
  fi
  ln -s "$src" "$dst"
  echo "linked $dst -> $src"
}

mkdir -p ~/.config

link nvim    ~/.config/nvim
link ghostty ~/.config/ghostty

echo "done"
