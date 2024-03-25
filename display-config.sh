#!/bin/bash

output=$(lshw -class display)
if echo "$output" | grep -q "AMD/ATI"; then
    #AMD E9260
    primaryDisplay=DisplayPort-2
    topperDisplay=DisplayPort-4
    dashDisplay=DisplayPort-5

elif echo "$output" | grep -q "NVIDIA"; then
    #NVidia T1000
    primaryDisplay=DP-4
    topperDisplay=DP-0
    dashDisplay=DP-2

else
    echo "No known graphics card detected."
fi

#Touch screen device id. Find devices by 'xinput list' and 'xinput --list-props #'.
primaryTouchDevice=10
dashTouchDevice=11   # Vendor 11135(0x2B7F), Device 2705(0x2201)

xrandr --output $primaryDisplay --mode 3840x2160 --scale 1x1 --rate 60
xrandr --output $topperDisplay --mode 1920x1080 --scale 1x1 --rate 60
xrandr --output $dashDisplay --mode 1280x342 --scale 1x1 --rate 60

xrandr --output $primaryDisplay --primary
xrandr --output $primaryDisplay --rotate left
xrandr --output $dashDisplay --below $primaryDisplay
xrandr --output $topperDisplay --above $primaryDisplay

xinput map-to-output $primaryTouchDevice $primaryDisplay
xinput map-to-output $dashTouchDevice $dashDisplay
