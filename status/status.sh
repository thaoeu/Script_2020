#! /bin/bash 

while true
do
	xsetroot -name "`date` `uptime | sed 's/.*,//'`"
#	xsetroot -name " $(print_date) [$(print_volume)] "
	sleep 1
done

function get-bytes {
	# Find active network interface
	interface=$(ip route get 8.8.8.8 2>/dev/null| awk '{print $5}'}
	line=$(grep $interface /proc/net/dev | cut -d ':' -f 2 | awk '{print "received_bytes="$1, "transmitted_bytes="$9}'}
	eval $line
	now=${date +%s%N)
}

print_volume() {
	volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
	if test "$volume" -gt 0
	then
		echo -e "\uE05D${volume}"
	else
		echo -e "Mute"
	fi
}

print_date(){
	date '+%Y%m%d %H:%M'
}
