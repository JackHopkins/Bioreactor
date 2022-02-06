# Bioreactor
Repository for scripts to set up a Raspberry Pi with sensors for tracking the conditions of a bioreactor, and dosing with nutrients.

## Sensors
To install the Seneye drivers, run the ./install_seneye.sh script in the sensors directory. This will reboot the machine. When the system has rebooted, unplug and plugin the Seneye sensor. 

Run 'lsusb' to verify that it has been found.
