#!/usr/bin/env bash
# Put your custom commands here that should be executed once
# the system init finished. By default this file does nothing.

#/usr/bin/lcd2usb_echo &

board=$(cat /tmp/sysinfo/board_name | cut -d , -f2)
if [ ! -e /etc/firstboot_${board} ]; then
    /root/setup.sh
    touch /etc/firstboot_${board}
fi
/bin/mount -a

#iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
/bin/sh /usr/bin/check_wan4.sh &
syncthing -gui-address="0.0.0.0:125" -logfile="/var/log/syncthing.log" -home="/mnt/sda1/home" -no-browser >/dev/null &
exit 0

