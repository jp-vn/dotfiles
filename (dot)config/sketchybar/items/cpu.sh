#!/bin/bash
CPU=(
  update_freq=2
  icon=""
  icon.font="MesloLGS Nerd Font:Bold:16.0"
  icon.color=$WHITE
  background.color=$BG_SEC_COLR
  script="$PLUGIN_DIR/cpu.sh"
)

sketchybar --add item cpu right \
           --set cpu "${CPU[@]}" 
