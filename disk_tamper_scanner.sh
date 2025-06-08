#!/bin/bash

#Install dependancy
read -p "Do you have f3 installed? " Answer
if [[ "$Answer" == "N" || "$Answer" == "n" ]]; then
echo
cd /tmp
echo
git clone https://aur.archlinux.org/f3.git
echo
cd f3
echo
makepkg -si
fi

#Requests exact path of device from the user.
echo
	read -p "What is the name of the device and its exact path? " Device
echo
echo "Initiating scan of the storage device..."
echo

#Scans the device for signs of tampering.
sudo f3probe --destructive --time-ops "$Device"
exit 0