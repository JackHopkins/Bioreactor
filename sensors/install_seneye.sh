#!/bin/bash

# Add user to usergroup
usermod -a -G plugdev pi
udevadm trigger

# Get Seneye driver
git clone https://github.com/seneye/SUDDriver.git
cd SUDDriver/Cpp

# Update firmware version
sed -i 's/8708/8710/' main.cpp

# Install dependencies
apt-get install libncurses5-dev libncursesw5-dev libudev-dev

# Compile driver
g++ -Wall -o sud.a main.cpp hidapi.h sud_data.h linux/hid.c -lcurses -ludev

#Reboot
reboot
