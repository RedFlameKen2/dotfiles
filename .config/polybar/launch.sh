#!/bin/bash

killall polybar

wallpaper="wp0"
configFile="config.ini"
theme="0"

default(){
    wallpaper="wp0"
    configFile="config.ini"
    theme="0"
}
pink(){
    wallpaper="wp1"
    configFile="themes/pink.ini"
    theme="1"
}
gray(){
    wallpaper="wp3"
    configFile="themes/gray.ini"
    theme="2"
}
green(){
    wallpaper="wp4"
    configFile="themes/green.ini"
    theme="3"
}
orange(){
    wallpaper="wp7"
    configFile="themes/orange.ini"
    theme="4"
}

random(){
    randomNum=$(($RANDOM % 5))
    curThemeFile="$HOME/.config/polybar/curTheme"
    while [ $randomNum == $(cat $curThemeFile) ]
    do
	randomNum=$(($RANDOM % 5))
    done	
    if [ $randomNum == "0" ]
    then
	default
    elif [ $randomNum == "1" ] 
    then
	pink
    elif [ $randomNum == "2" ] 
    then
	gray
    elif [ $randomNum == "3" ] 
    then
	green
    elif [ $randomNum == "4" ] 
    then
	orange
    fi
}

while getopts "abcder" flag; do
    case "${flag}" in
	a)
	    default
	    ;;
	b)
	    pink
	    ;;
	c)
	    gray
	    ;;
	d)
	    green
	    ;;
	e)
	    orange
	    ;;
	r)
	    random
	    ;;
	*)
	    exit 1
	    ;;
    esac
done
sleep 1
echo $theme > "$HOME/.config/polybar/curTheme"
feh --bg-scale "$HOME/.wallpapers/$wallpaper.jpg"
polybar --config="$HOME/.config/polybar/$configFile" main &

exit

