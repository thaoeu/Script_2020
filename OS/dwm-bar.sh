#!/usr/bin/env bash
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

export IDENTIFIER="unicode"

export SEP1="["
export SEP2="]"

# Import the modules
. "$DIR/bar-functions/dwm_alsa.sh"
. "$DIR/bar-functions/dwm_backlight.sh"
#. "$DIR/bar-functions/dwm_ip.sh"
#. "$DIR/bar-functions/dwm_networkmanager.sh"
. "$DIR/bar-functions/dwm_resources.sh"

while true
do

	dispstr=""
	dispstr="$dispstr$(dwm_resources)"
#	dispstr="$dispstr$(dwm_networkmanager)"
#	dispstr="$dispstr$(dwm_ip)"
	dispstr="$dispstr$(dwm_backlight)"
	dispstr="$dispstr$(dwm_alsa)"

	xsetroot -name "$dispstr"
	sleep 2

done
