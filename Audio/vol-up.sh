#!/bin/bash

#/usr/bin/amixer -qM set Master 5%+ umute
#pactl set-sink-volume @DEFAULT_SINK@ +7%
pulseaudio-ctl up 7
bash ../OS/dwm-bar.sh
