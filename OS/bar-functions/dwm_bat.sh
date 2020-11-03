#!/usr/bin/env bash
	get_battery_combined_percent() {

		# get charge of all batteries, combine them
		total_charge=$(expr $(acpi -b | awk '{print $4}' | grep -Eo "[0-9]+" | paste -sd+ | bc));

		# get amount of batteries in the device
		battery_number=$(acpi -b | wc -l);

		percent=$(expr $total_charge / $battery_number);

		echo $percent;
	}

	print_b(){
		#echo "$(get_battery_charging_status) $(get_battery_combined_percent)%, $(get_time_until_charged )";
		if $(acpi -b | grep --quiet Discharging)
		then
			echo "$(get_battery_combined_percent)  ";
		else # acpi can give Unknown or Charging if charging, https://unix.stackexchange.com/questions/203741/lenovo-t440s-battery-status-unknown-but-charging
			echo "";
		fi
	}

dwm_bat () {
	if [ "$IDENTIFIER" = "unicode" ]; then
		if $(acpi -b | grep --quiet Discharging)
		then
			printf " ";
		else
			printf "";
		fi
	else
		if $(acpi -b | grep --quiet Discharging)
		then
			printf "Discharging";
		else
			printf "Charging";
		fi
	fi

	}

dwm_bat
