#!/bin/sh

# A dwm_bar function to show the master volume of ALSA
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: alsa-utils

dwm_alsa () {
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
	MUTE=$(amixer get Master | sed -n '$p' | cut -d] -f2 | cut -d[ -f2)
    printf "%s" "$SEP1"
	if [ "$MUTE" = "on" ]; then
		if [ "$VOL" -eq 0 ]; then
			printf "SILENT"
		else
			printf "%s" "$VOL"
		fi
	else 
		if [ "$MUTE" = "off" ]; then
			printf "MUTE"
		fi
	fi
}

dwm_alsa
