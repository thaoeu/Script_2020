#!/bin/bash

# This function parses /proc/net/dev file searching for a line containing $interface data.
# Within that line, the first and ninth numbers after ':' are respectively the received and transmited bytes.
function get_bytes {
	# Find active network interface
	interface=$(ip route get 8.8.8.8 2>/dev/null| awk '{print $5}')
	line=$(grep $interface /proc/net/dev | cut -d ':' -f 2 | awk '{print "received_bytes="$1, "transmitted_bytes="$9}')
	eval $line
	now=$(date +%s%N)
}

# Function which calculates the speed using actual and old byte number.
# Speed is shown in KByte per second when greater or equal than 1 KByte per second.
# This function should be called each second.

function get_velocity {
	value=$1
	old_value=$2
	now=$3

	timediff=$(($now - $old_time))
	velKB=$(echo "1000000000*($value-$old_value)/1024/$timediff" | bc)
	if test "$velKB" -gt 1024
	then
		echo $(echo "scale=2; $velKB/1024" | bc)Mb◭
	else
		echo ${velKB}kb
	fi
}

# --------
# Get initial values
# --------
get_bytes
old_received_bytes=$received_bytes
old_transmitted_bytes=$transmitted_bytes
old_time=$now

print_mem(){
	memfree=$(($(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}') / 1000))
	echo -e "$memfree"
}

print_temp(){
	test -f /sys/class/thermal/thermal_zone0/temp || return 0
	echo $(head -c 2 /sys/class/thermal/thermal_zone0/temp)C
}


get_battery_combined_percent() {

	# get charge of all batteries, combine them
	total_charge=$(expr $(acpi -b | awk '{print $4}' | grep -Eo "[0-9]+" | paste -sd+ | bc));

	# get amount of batteries in the device
	battery_number=$(acpi -b | wc -l);

	percent=$(expr $total_charge / $battery_number);

	echo $percent;
}

print_bat(){
	#echo "$(get_battery_charging_status) $(get_battery_combined_percent)%, $(get_time_until_charged )";
	if $(acpi -b | grep --quiet Discharging)
	then
		echo "$(get_battery_combined_percent)  ";
	else # acpi can give Unknown or Charging if charging, https://unix.stackexchange.com/questions/203741/lenovo-t440s-battery-status-unknown-but-charging
		echo "";
	fi
}
#--------
# date from 1970-01-01
#--------
print_date(){
	date '+%u%d%j%S'
}

# --------
# Countdown
# --------

# get_bytes
# print_Countdown(){
# 	Countdown=$(go run ~/go/src/thaoeu.site/Countdown/Countdown.go)
# 	echo "$Countdown"
# }
# show_record(){
# 	test -f /tmp/r2d2 || return
# 	rp=$(cat /tmp/r2d2 | awk '{print $2}')
# 	size=$(du -h $rp | awk '{print $1}')
# 	echo " $size $(basename $rp)"
# }


LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")
export IDENTIFIER="unicode"

#. "$DIR/dwmbar-functions/dwm_transmission.sh"
#. "$DIR/dwmbar-functions/dwm_cmus.sh"
#. "$DIR/dwmbar-functions/dwm_resources.sh"
#. "$DIR/dwmbar-functions/dwm_battery.sh"
#. "$DIR/dwmbar-functions/dwm_mail.sh"
#. "$DIR/dwmbar-functions/dwm_backlight.sh"
. "$DIR/dwmbar-functions/dwm_alsa.sh"
#. "$DIR/dwmbar-functions/dwm_pulse.sh"
#. "$DIR/dwmbar-functions/dwm_weather.sh"
#. "$DIR/dwmbar-functions/dwm_vpn.sh"
#. "$DIR/dwmbar-functions/dwm_network.sh"
#. "$DIR/dwmbar-functions/dwm_keyboard.sh"
#. "$DIR/dwmbar-functions/dwm_ccurse.sh"
#. "$DIR/dwmbar-functions/dwm_date.sh"

get_bytes
print_time(){
	time=$(go run ~/go/src/thaoeu.site/status/status.go)
	echo "$time"
}


get_bytes
# --------
# Calculates speeds
# --------
vel(){
	vel_recv=$(get_velocity $received_bytes $old_received_bytes $now)
	echo "$vel_recv"
	vel_trans=$(get_velocity $transmitted_bytes $old_transmitted_bytes $now)
}

xsetroot -name " $(print_mem) $(vel) $(print_bat)$(print_temp)$(print_date)▸$(dwm_alsa)"

# Update old values to perform new calculations
#  $(print_Countdown)⬇️⬆️$vel_trans $(print_time)  
old_received_bytes=$received_bytes
old_transmitted_bytes=$transmitted_bytes
old_time=$now

exit 0
