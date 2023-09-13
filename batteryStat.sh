#!/bin/bash 

bstat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | grep -o "[0-9]*")
push="notify-send -t 10000 -u critical"

while [ "$bstat" -le 95 ]
do
    echo $bstat
    sleep 2.5s
done 
$push "Battery Low"



