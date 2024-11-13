#!/bin/bash

CONFIG_DIR="/Users/yizishun/nix-darwin-config/module/config/sketchybar"
sketchybar --set $NAME icon="$(date '+%a %d. %b')" label="$(date '+%H:%M')"
