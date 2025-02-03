# Load global styles, colors and icons
source "$CONFIG_DIR/globalstyles.sh"

weather=(
  "${menu_defaults[@]}"
  "${notification_defaults[@]}"
  popup.align=right
  icon.color=$HIGHLIGHT
  script="$PLUGIN_DIR/weather.sh"
  --subscribe weather wifi_change
                      mouse.entered
                      mouse.exited
                      mouse.exited.global
                      mouse.clicked
)
sketchybar                                  \
  --add item weather right                  \
       --set weather "${weather[@]}"        \
  --add item weather.details popup.weather  \
       --set weather.details "${menu_item_defaults[@]}" icon.drawing=on label.padding_left=0
