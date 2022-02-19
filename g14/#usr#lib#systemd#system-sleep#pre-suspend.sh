#!/bin/bash

# Disable backlight
if [ "${1}" == "post" ]; then
	brightnessctl --device='asus::kbd_backlight' set 0
fi
