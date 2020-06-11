#!/bin/bash

while true
do
    capacity=$(/usr/bin/cat /sys/class/power_supply/BAT1/capacity)
    status=$(/usr/bin/cat /sys/class/power_supply/BAT1/status)

    /usr/bin/notify-send -u critical "WORKING" "BATTERY"
    if [ "$status" = "Discharging" ] && [ "$capacity" -le 25 ]
    then
       /usr/bin/notify-send-u critical "Battery low" "Battery level is ${battery_level}%!"
    elif [ "$status" = "Discharging" ] && [ "$capacity" -le 20 ]
    then
        /usr/bin/i3lock -c 222222 & /usr/bin/systemctl suspend
    fi
    /usr/bin/sleep 5
done
