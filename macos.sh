#!/bin/sh

set -xe

defaults write com.apple.finder AppleShowAllFiles -bool true;
killall Finder;

defaults write com.apple.dock autohide-delay -float 0;
killall Dock;

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true;
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true;
