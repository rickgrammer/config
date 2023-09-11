#!/usr/bin/bash
is_transparent=$(cat ~/.config/alacritty/alacritty.toml | grep "opacity = 0.85")
if [[ $is_transparent ]]
then
    sed -i 's/opacity = 0.85/opacity = 1.00/' ~/.config/alacritty/alacritty.toml
else
    sed -i 's/opacity = 1.0/opacity = 0.85/' ~/.config/alacritty/alacritty.toml
fi
