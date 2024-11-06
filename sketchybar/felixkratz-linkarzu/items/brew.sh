#!/bin/bash

# Filename: ~/github/dotfiles-latest/sketchybar/felixkratz-linkarzu/items/brew.sh

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

brew=(
  icon=􀐛
  label=?
  update_freq=60
  padding_right=12
  label.padding_left=3
  script="$PLUGIN_DIR/brew.sh"
)

sketchybar --add event brew_update \
  --add item brew right \
  --set brew "${brew[@]}" \
  --subscribe brew brew_update
