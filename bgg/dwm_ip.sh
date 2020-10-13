#!/usr/bin/env bash
# Dependencies: NetworkManager, curl

dwm_ip () {
	IP=$(curl -s https://ipinfo.io/ip)

	printf "%s" "$SEP1"
	if [ "$IDENTIFIER" = "unicode" ]; then
		printf "🌐%s " "$IP"
	else
		printf "NET %s " "$IP"
	fi
	printf "%s\n" "$SEP2"
}

dwm_ip
