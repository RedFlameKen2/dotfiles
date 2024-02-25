#!/bin/bash

# This command will close all active conky
killall conky
killall glava
sleep 2s
		
echo "breh"
# Only the config listed below will be avtivated
# if you want to combine with another theme, write the command here
conky -c $HOME/.config/conky/Regulus/Regulus.conf &> /dev/null & 
glava --desktop > /dev/null &

exit
