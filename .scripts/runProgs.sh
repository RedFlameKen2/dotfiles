#!/bin/bash

#reset programs before running again
killall picom


#activate compositor
picom --experimental-backends & 
