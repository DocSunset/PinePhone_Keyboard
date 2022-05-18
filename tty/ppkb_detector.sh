#!/bin/sh

DEVICE="$(cat /proc/bus/input/devices | grep 'PinePhone Keyboard')"

if [ -z "$DEVICE" ];
then
    loadkeys us
    echo 0 > /sys/class/graphics/fbcon/rotate
else
    loadkeys /usr/local/share/kbd/keymap/pine/ppkb.map
    echo 1 > /sys/class/graphics/fbcon/rotate
fi
