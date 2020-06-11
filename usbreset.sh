#!/bin/bash
# Script to reset mouse instead of reaching below and re-plugging it
# See https://marc.info/?l=linux-usb&m=121459435621262&w=2 and https://askubuntu.com/questions/645/how-do-you-reset-a-usb-device-from-the-command-line
# This needs the usbreset.c program from the links above, I only have one Logitech USB device (my mouse) so grepping is straightforward

_iscon=$(/usr/bin/lsusb | grep 'Logitech, Inc.')
#echo "Mouse detected: $_muson"
_busid=$(/usr/bin/lsusb | grep 'Logitech, Inc.' | awk '{ print $2 }')
#echo "Bus ID: $_busid"
_devid=$(/usr/bin/lsusb | grep 'Logitech, Inc.' | awk '{ print $4 }' | sed 's/.$//')
#echo "Device ID: $_devid"

if [[ $_iscon != 0 ]]
then
    /usr/bin/sudo /usr/local/conky/bin/usbreset /dev/bus/usb/"$_busid"/"$_devid"
else
    exit 0
fi
