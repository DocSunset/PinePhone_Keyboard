#!/bin/sh

DEVICE="$(cat /proc/bus/input/devices | grep 'PinePhone Keyboard')"

if [ -z "$DEVICE" ];
then
    loadkeys us
    echo 0 > /sys/class/graphics/fbcon/rotate
else
    loadkeys /usr/share/kbd/keymap/pine/en.map.gz
    echo 1 > /sys/class/graphics/fbcon/rotate
fi
