#!/usr/bin/env bash

connected_displays=($(xrandr | grep " connected" | awk '{print $1}'))
disconnected_displays=($(xrandr | awk '/disconnected/{print $1}'))
count_connected_displays=${#connected_displays[@]}
resolution_displays=($(xrandr | awk -F'[ +]' '/ connected/{print $3}'))

position_displays=("2560x0" "0x0")
if [ ${resolution_displays[0]} == "2560x1080" ]; then
    position_displays=("0x0" "2560x0")
fi

if [ $count_connected_displays == 2 ]; then
    xrandr --fb 4480x1080
    xrandr --output ${connected_displays[0]} --size ${resolution_displays[0]} --pos ${position_displays[0]} --rotate normal
    xrandr --output ${connected_displays[1]} --size ${resolution_displays[1]} --pos ${position_displays[1]} --rotate normal
    for display_name in ${disconnected_displays[@]}; do
        xrandr --output $display_name --off
    done
    #bspc wm -O HDMI-A-0 "DisplayPort-1"
    #bspc monitor DisplayPort-1 -d VI VII VIII IX X
    #bspc monitor HDMI-A-0 -d I II III IV V
else 
    xrandr --auto 
    bspc monitor -d I II III IV V VI VII VIII IX X
fi
