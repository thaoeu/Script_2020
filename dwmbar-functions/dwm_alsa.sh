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
		




#     if [ "$IDENTIFIER" = "unicode" && "$MUTE" = "on" ]; then
#         if [ "$VOL" -eq 0 ]; then
#             printf "SILENT"
#         elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
#             printf "%s" "$VOL"
#         elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
#             printf "%s" "$VOL"
#         else
#             printf "%s" "$VOL"
#         fi
#     else
#         if [ "$VOL" -eq 0 ]; then
#             printf "SILENT"
#         elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
#             printf "VOL %s%" "$VOL"
#         elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
#             printf "VOL %s%" "$VOL"
#         else
#             printf "VOL %s%" "$VOL"
#         fi
#     fi
#     printf "%s\n" "$SEP2"
# }

