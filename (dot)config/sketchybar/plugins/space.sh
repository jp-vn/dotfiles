#!/bin/bash

update() {
  """
  WIDTH="dynamic"
  if [ "$SELECTED" = "true" ]; then
    WIDTH="0"
  fi
  """
  sketchybar --set $NAME icon.highlight=$SELECTED label.width=$WIDTH
}
#--animate tanh 20

mouse_clicked() {
  if [ "$BUTTON" = "right" ]; then
    yabai -m space --destroy $SID
    sketchybar --trigger space_change --trigger windows_on_spaces
  else
    yabai -m space --focus $SID 2>/dev/null
  fi
}

case "$SENDER" in
  "mouse.clicked") mouse_clicked
  ;;
  *) update
  ;;
esac
