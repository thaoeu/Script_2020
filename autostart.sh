#!/usr/bin/env bash

#xrandr --output HDMI-0 --off --output DP-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-2 --off --output DP-3 --off --output DP-4 --off

# xrandr --output DP-0 --output --scale 0.75 &
#xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --mode 1920x1080 --pos 1920x0 --rotate left
#xrandr --output DP-3 --primary --mode 1920x1080 --rate 60 --pos 0x0 --output DP-0 --mode 1920x1080 --pos 1920x10
~/Script/Video/wp-change.sh &
~/Fasttop/verysync-linux-amd64-v2.2.0/verysync &
#bluetoothctl power on &
#bluetoothctl &
# nm-applet &
# picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b

kdeconnect-cli &
#syncthing -no-browser&
# konsole -e nvim ~/Templates/hgd.md &
# konsole -e nvim ~/Templates/qmk_firmware/keyboards/bggpad/keymaps/default/keymap.c
# konsole -e nvim ~/Overt/config/vim/init.vim
# xfce4-power-manager &
