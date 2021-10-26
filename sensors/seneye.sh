#!/bin/bash

# Get Seneye driver
git clone https://github.com/seneye/SUDDriver.git
cd SUDDriver/Cpp

# Update firmware version
sed -i 's/8708/8710/' main.cpp

# Compile driver
sudo g++ -Wall -o sud.a main.cpp hidapi.h sud_data.h linux/hid.c -lcurses -ludev

# Run driver
sudo ./sud.a
