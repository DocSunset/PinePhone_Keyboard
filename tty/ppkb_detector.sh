#!/bin/sh

DEVICE='cat /proc/bus/input/devices | grep "PinePhone Keyboard"'

if [ $DEVICE = 'PinePhone Keyboard' ]; then
    loadkeys /usr/local/share/kbd/keymap/pine/ppkb.map
    echo 1 > /sys/class/graphics/fbcon/rotate

fi
