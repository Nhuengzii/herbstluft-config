#!/bin/bash

# define the available layout algorithms
layouts=("vertical" "horizontal" "max" "grid")

# use rofi to display a menu of the available layouts
layout=$(printf '%s\n' "${layouts[@]}" | rofi -dmenu -p "Select layout")

# check if the user made a selection
if [ -n "$layout" ]; then
  # change the layout of the currently focused frame to the selected layout
  herbstclient set_attr tags.focus.tiling.focused_frame.algorithm "$layout"
fi
