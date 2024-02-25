#!/bin/bash

# Closebox73
# Simple script to get playerctl status

#!/bin/bash

# Closebox73
# Simple script to get playerctl status
#!/bin/bash

# Closebox73
# Simple script to get playerctl status
#!/bin/bash

# Closebox73
# Simple script to get playerctl status

#PCTL=$(playerctl status)
#
#if [[ ${PCTL} == "" ]]; then
#    echo "No Music Played"
#else
#    TITLE=$(playerctl metadata xesam:title)
#    LENGTH=${#TITLE}
#    SCROLL_SPEED=0.5  # Change this value to adjust the scroll speed
#    MAX_DISPLAY_LENGTH=20  # Change this value to adjust the maximum displayed length
#    MAX_ITERATIONS=100  # Change this value to adjust the maximum number of iterations
#
#    if [ $LENGTH -gt $MAX_DISPLAY_LENGTH ]; then
#        ITERATION=0
#        while [ $ITERATION -lt $MAX_ITERATIONS ]; do
#            DISPLAY_TEXT="${TITLE}   ${TITLE:0:$MAX_DISPLAY_LENGTH}"
#            echo "${DISPLAY_TEXT}"
#            TITLE="${TITLE:1}${TITLE:0:1}"
#            sleep $SCROLL_SPEED
#            ((ITERATION++))
#        done
#    else
#        echo "$TITLE"
#    fi
#fi
#
#exit
#

#old version
PCTL=$(playerctl status)

if [[ ${PCTL} == "" ]]; then
	echo "No Music Played"
else
	playerctl metadata xesam:title
fi

exit
