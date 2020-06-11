# usbreset
Alan Stern's (usbreset.c) - Yes, there is a way to force Linux's USB stack to perform a port reset and re-enumerate a device.

See [his post to  the Linux-USB mailing-list](https://marc.info/?l=linux-usb&m=121459435621262&w=2) and [this](https://askubuntu.com/questions/645/how-do-you-reset-a-usb-device-from-the-command-line).

WHAT THIS SOLVES - Occasionally, my gaming mice will not be detected on boot on my aging motherboard and this removes the annoyance of having to get up and remove+re-plug the mouse's USB connector. Used via bash script that Gnome autostarts on login.

Compile the program:

$ cc usbreset.c -o usbreset

Get the Bus and Device ID of the USB device you want to reset:

$ lsusb  
Bus 002 Device 003: ID 0fe9:9010 DVICO  

Make our compiled program executable:

$ chmod +x usbreset

Execute the program with sudo privilege; make necessary substitution for (Bus) and (Device) IDs as found by running lsusb:

$ sudo ./usbreset /dev/bus/usb/002/003
