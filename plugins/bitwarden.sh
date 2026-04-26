#!/bin/bash

# Check if Bitwarden is running
RUNNING=$(pgrep -x "Bitwarden")

if [ "$RUNNING" ]; then
  sketchybar --set $NAME drawing=on
else
  sketchybar --set $NAME drawing=off
fi
