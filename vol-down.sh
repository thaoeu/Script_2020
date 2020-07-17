#!/bin/bash

#/usr/bin/amixer -qM set Master 5%- umute
#pactl set-sink-volume @DEFAULT_SINK@ -7%
pulseaudio-ctl down 7
bash ~/Script/dwm-status-refresh.sh
