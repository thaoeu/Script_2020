#!/bin/bash
kdeconnect-cli
# test zone
xrandr --output DP-0 --off
picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
bluetoothctl power on
bluetoothctl &
nm-applet &
/bin/bash ~/Script/dwm-status.sh &
/bin/bash ~/Script/wp-autochange.sh &
# keynav&
konsole -e nvim ~/Overt/config/sh/.zshrc &
konsole -e nvim ~/Overt/config/vim/init.vim
#nm-applet &
#xfce4-power-manager &
#xfce4-volumed-pulse &
#~/Script/autostart_wait.sh &
