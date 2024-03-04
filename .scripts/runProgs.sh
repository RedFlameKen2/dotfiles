#!/bin/bash

#reset programs before running again
killall picom

sleep 1
#activate compositor
picom --experimental-backends & 
#$($HOME/.scripts/wallpaper.sh)

exit
