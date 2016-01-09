#!/bin/bash

#
# Touchpad Toggle and Config Script
#

# touchpad future state
touchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')

# toggle the touchpad
synclient TouchpadOff=$touchpadOff

# custom touchpad conf comes here
if [ $touchpadOff -eq 0 ] ; then
	synclient AccelFactor=0.05
	synclient CoastingFriction=46
	synclient HorizTwoFingerScroll=1
	synclient HorizEdgeScroll=1
	synclient HorizScrollDelta=-50
	synclient VertTwoFingerScroll=1
	synclient VertEdgeScroll=1
	synclient VertScrollDelta=-100
	synclient MaxTapMove=3.4
fi
