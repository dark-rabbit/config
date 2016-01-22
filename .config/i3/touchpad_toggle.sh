#!/bin/bash

touchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')

synclient TouchpadOff=$touchpadOff

$touchpadOff -eq 0 && ./touchpad_init.sh
