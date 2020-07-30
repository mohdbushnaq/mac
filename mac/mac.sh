#!/bin/bash

mac="$(zenity --entry --text "Enter the MAC address:\n")"
error=({"errors":{"detail":"Not Found"}})
vendor="$(curl -s https://api.macvendors.com/$mac)"
if [[ $vendor == *"errors"* ]]
then
 zenity --title="Device info" --error --title="Error" --no-wrap --text "Device Not Found or wrong mac address format. Accepted MAC address formats:
 
001122334455
0011.2233.4455
00:11:22:33:44:55
00.11.22.33.44.55
00-11-22-33-44-55"
else
 zenity --title="Device info" --window-icon=info --no-wrap --info --text "MAC: $mac\nVendor: $vendor"
fi


#zenity --title="Device info" --window-icon=info --no-wrap --info --text "$(curl -s https://api.macvendors.com/$(zenity --entry))"
