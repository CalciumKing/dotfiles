#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# launch main bar
polybar main 2>&1
