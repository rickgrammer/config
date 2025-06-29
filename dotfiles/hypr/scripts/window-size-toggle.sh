#!/bin/bash

# Get current window info
client=$(hyprctl activewindow -j)
win_x=$(echo "$client" | jq '.at[0]')
win_y=$(echo "$client" | jq '.at[1]')
win_w=$(echo "$client" | jq '.size[0]')
win_h=$(echo "$client" | jq '.size[1]')
win_addr=$(echo "$client" | jq -r '.address')

# Target sizes
small_w=800
small_h=600

# Get monitor dimensions
monitor=$(hyprctl monitors -j | jq -r '.[0]')
mon_x=$(echo "$monitor" | jq '.x')
mon_y=$(echo "$monitor" | jq '.y')
mon_w=$(echo "$monitor" | jq '.width')
mon_h=$(echo "$monitor" | jq '.height')
bar_height=33
max_h=$((mon_h - bar_height))

# Check if already in "maximized" size
if [ "$win_w" -gt 1000 ] && [ "$win_h" -gt 500 ]; then
  # Shrink to small size and center it
  new_x=$((mon_x + (mon_w - small_w) / 2))
  new_y=$((mon_y + (max_h - small_h) / 2))
  hyprctl dispatch moveactive exact "$new_x $new_y"
  hyprctl dispatch resizeactive exact "$small_w $small_h"
else
  # Expand to maximized size (minus status bar)
  hyprctl dispatch moveactive exact "$mon_x $((mon_y+bar_height))"
  hyprctl dispatch resizeactive exact "$mon_w $max_h"
fi
