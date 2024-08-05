#!/bin/bash

SOURCE_DIR="$(cd "$(dirname "$BASH_SOURCE[0]")" && pwd)"
VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"

FILES=("settings.json" "keybindings.json")

for file in "${FILES[@]}"; do
  src="$SOURCE_DIR/$file"
  dest="$VSCODE_USER_DIR/$file"

  if [ -f "$src" ]; then
    if [ -f "$dest" ]; then
      if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
        echo "[INFO] $dest is already symlinked to $src"
      else
        echo "[ERROR] $dest already exists (but is not symlinked to $src)"
      fi
      continue
    fi

    ln -s "$src" "$dest"
    echo "[INFO] Symlinked $dest -> $src"
  else
    echo "[ERROR] $src does not exist"
  fi
done