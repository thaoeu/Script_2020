#!/bin/bash

xrandr --output DP-0 --off
/bin/bash ~/Script/dwm-status.sh &
/bin/bash ~/Script/wp-autochange.sh &
bluetoothctl power on
bluetoothctl&
picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
konsole -e nvim ~/Overt/config/sh/.zshrc&
konsole -e nvim ~/Overt/config/vim/init.vim
#nm-applet &
#xfce4-power-manager &
#xfce4-volumed-pulse &
#~/Script/autostart_wait.sh &
