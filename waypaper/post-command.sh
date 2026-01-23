#!/usr/bin/env bash

wal -i "$1"  # generate color files based on wallpaper argument
~/.config/waybar/scripts/launch.sh  # relaunch waybar with new color scheme
~/.config/spicetify/scripts/wal.sh  # update spicetify theme
