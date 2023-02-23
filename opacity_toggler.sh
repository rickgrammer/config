#!/bin/sh
is_transparent=$(cat .config/alacritty/alacritty.yml | grep 'opacity: 0.85')
if [[ $is_transparent ]]
then
    sed -i 's/opacity: 0.85/opacity: 1.00/' .config/alacritty/alacritty.yml
else
    sed -i 's/opacity: 1.0/opacity: 0.85/' .config/alacritty/alacritty.yml
fi
