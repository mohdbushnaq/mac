#!/bin/bash

#Installing Zenity
echo "Installing Zenity... "
sudo apt-get install zenity

#Installing Curl
echo "Installing Curl... "
sudo apt install curl


#Installing mac
echo "Installing mac... "
sudo cp ./mac.sh /usr/bin/mac
sudo chmod 777 /usr/bin/mac

#Installing manual page
echo "Installing mac manual page... "
path="$(manpath | cut -d ":" -f 3)"
path+="/man8"

echo "Copying the manual page into $path... "

sudo cp ./mac.8.gz $path
echo "mac installed sucessfully!"
