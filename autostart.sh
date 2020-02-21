#!/bin/bash

# test zone
xrandr --output DP-0 --off
bluetoothctl power on
bluetoothctl &
picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
/bin/bash ~/Script/wp-autochange.sh &
/bin/bash ~/Script/dwm-status.sh &

sleep 10
kdeconnect-cli
konsole -e nvim ~/Templates/hgd.md &
konsole -e nvim
# konsole -e nvim ~/Overt/config/vim/init.vim
#xfce4-power-manager &
#xfce4-volumed-pulse &
#~/Script/autostart_wait.sh &
