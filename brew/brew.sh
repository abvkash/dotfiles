#!/bin/bash

if [ "$(command -v brew)" = "" ]; then
    echo "[INFO] Installing Hombrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "[INFO] Updating Homebrew"
    brew update
fi

if [ -f "./Brewfile" ]; then
  brew bundle --file="./Brewfile"
  echo "[INFO] Finished"
else
  echo "[ERROR] Brewfile does not exist"