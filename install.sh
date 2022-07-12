#!/bin/bash

# Stop the operating system from using the current swap file
sudo dphys-swapfile swapoff

#Change `CONF_SWAPSIZE` value from `100` to `1024` (the size of the swap in megabytes)
sed 's/CONF_SWAPSIZE=100/CONF_SWAPSIZE=1024/' /etc/dphys-swapfile

#Delete the original swap file and recreate it to fit the newly defined size
sudo dphys-swapfile setup

#Start the operating systems swap system
sudo dphys-swapfile swapon

#Reboot your device in order the changes to take effect