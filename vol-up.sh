#!/bin/bash

#/usr/bin/amixer -qM set Master 5%+ umute
#pactl set-sink-volume @DEFAULT_SINK@ +7%
pulseaudio-ctl up 7
bash ./dwm-status-refresh.sh

