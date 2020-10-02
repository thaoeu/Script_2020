#!/bin/bash

#xrandr --auto --output DP-0 --pos 0x00 --mode 1920x1080 --output HDMI-0 --mode 1920x1080 --primary --left-of DP-0
#xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --mode 1920x1080 --pos 1920x0 --rotate left
#xrandr --output DP-3 --primary --mode 1920x1080 --rate 60 --pos 0x0 --output DP-0 --mode 1920x1080 --pos 1920x10
xrandr --output DP-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --mode 1920x1080 --pos 1920x0 --rotate normal
# bluetoothctl power on &
# bluetoothctl &
# xfce4-power-manager &
#nm-applet &
#picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
~/Script/dwm-status.sh &
~/Script/wp-autochange.sh &

# dunst
fcitx &
kdeconnect-cli &
syncthing -no-browser&
#konsole -e nvim ~/Templates/hgd.md &
#konsole -e nvim ~/Templates/qmk_firmware/keyboards/bggpad/keymaps/default/keymap.c
# konsole -e nvim ~/Overt/config/vim/init.vim
#xfce4-power-manager &
