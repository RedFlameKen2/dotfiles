#!/bin/sh

if [ "$DESKTOP_SESSION" = "i3" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky/Regulus"
   conky -c "$HOME/.conky/Regulus/Regulus.conf" &
   cd "$HOME/.conky/glava"
   conky -c "$HOME/.conky/glava/glava.conf" &
   exit 0
fi
if [ "$DESKTOP_SESSION" = "cinnamon" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky/Regulus"
   conky -c "$HOME/.conky/Regulus/Regulus.conf" &
   cd "$HOME/.conky/glava"
   conky -c "$HOME/.conky/glava/glava.conf" &
   exit 0
fi
