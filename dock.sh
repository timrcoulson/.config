#!/usr/bin/env bash

defaults write com.apple.dock persistent-apps -array
APPS=(
  Slack
  Google\ Chrome
  1Password\ 7
  GoLand
  Webstorm
  iTerm
  Spotify
)

for i in "${APPS[@]}"
do
  echo "Adding $i to dock"
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$i.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done
killall Dock;
