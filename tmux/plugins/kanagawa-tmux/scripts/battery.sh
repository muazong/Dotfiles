#!/usr/bin/env bash

if [[ $(ls /sys/class/power_supply/BAT* 2>/dev/null | wc -l) != "0" ]]; then
	charge=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}')
	echo $charge
else
	echo "0"
fi
