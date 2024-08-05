#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$BASH_SOURCE[0]")" && pwd)"

for file in "$DOTFILES_DIR"/.*; do
  filename=$(basename "$file")

  if [ "$filename" != "." ] && [ "$filename" != ".." ] && \
     [ "$filename" != ".git" ] && [ "$filename" != ".gitignore" ]; then
    dest="$HOME/$filename" 

    if [ -e "$dest" ]; then
      if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$file" ]; then
        echo "[INFO] $dest is already symlinked to $file"
      else
        echo "[ERROR] $dest already exists (but is not symlinked to $file)"
      fi
      continue
    fi

    ln -s "$file" "$dest"
    echo "[INFO] Symlinked $dest -> $file"
  fi
done