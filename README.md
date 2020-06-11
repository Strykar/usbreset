# usbreset
Alan Stern's (usbreset.c) - Yes, there is a way to force Linux's USB stack to perform a port reset and re-enumerate a device.
See - https://marc.info/?l=linux-usb&m=121459435621262&w=2

Issue - Occasionally, my gaming mice will not be detected on boot on my aging motherboard and this remove the annoyance of having to get up and remove+re-plug the mouse's USB connector.

Used via bash script that Gnome autostarts on login.
