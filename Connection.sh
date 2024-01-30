#!/bin/bash

###################################################################################################
#Connection.sh
#This script acts as a basic automated connectivity check for my locally connected lab devices.
#The script I use directly in my lab has a few sensitive hostnames, and as such has the names swapped with placeholders.
#I made this script to help reduce the amount of manual connection tests I would need to do, in the event of a power loss or network failure.
#I'm sure there is much better / much more efficient ways to do this such as with Ansible, but this suits my needs for now.
#As always if you have any constructive criticism, or advice I gladly welcome it.
###################################################################################################

# This scipt acts a connectivity check for my lab devices.
units=("Device 01" "Device 02" "Device 03" "Device 04" "Device 05" "Device 06" "Device 07" "Device 08" "Device 09" "Device 10" "Device 11" "Device 12" "Device 13" "Device 14" "Device 15")
address=(192.168.1.1 192.168.1.2 192.168.1.3 192.168.1.4 192.168.1.5 192.168.1.6 192.168.1.7 192.168.1.8 192.168.1.11 192.168.1.12 192.168.1.13 192.168.1.14 192.168.1.15 192.168.1.16 192.168.1.254)
output=/dev/null
up="is showing online."
down="is showing unreachable."

interup="The internet is connected and reachable."
interdown="The internet is unreachble."

#Functions for testing connection on each device.
device01() { ping "${address[0]}" -c 2 > $output; if ! ping "${address[0]}" -c 2 > $output; then echo "${units[0]} $down"; else echo "${units[0]} $up"; fi }
device02() { ping "${address[1]}" -c 2 > $output; if ! ping "${address[1]}" -c 2 > $output; then echo "${units[1]} $down"; else echo "${units[1]} $up"; fi }
device03() { ping "${address[2]}" -c 2 > $output; if ! ping "${address[2]}" -c 2 > $output; then echo "${units[2]} $down"; else echo "${units[2]} $up"; fi }
device04() { ping "${address[3]}" -c 2 > $output; if ! ping "${address[3]}" -c 2 > $output; then echo "${units[3]} $down"; else echo "${units[3]} $up"; fi }
device05() { ping "${address[4]}" -c 2 > $output; if ! ping "${address[4]}" -c 2 > $output; then echo "${units[4]} $down"; else echo "${units[4]} $up"; fi }
device06() { ping "${address[5]}" -c 2 > $output; if ! ping "${address[5]}" -c 2 > $output; then echo "${units[5]} $down"; else echo "${units[5]} $up"; fi }
device07() { ping "${address[6]}" -c 2 > $output; if ! ping "${address[6]}" -c 2 > $output; then echo "${units[6]} $down"; else echo "${units[6]} $up"; fi }
device08() { ping "${address[7]}" -c 2 > $output; if ! ping "${address[7]}" -c 2 > $output; then echo "${units[7]} $down"; else echo "${units[7]} $up"; fi }
device09() { ping "${address[8]}" -c 2 > $output; if ! ping "${address[8]}" -c 2 > $output; then echo "${units[8]} $down"; else echo "${units[8]} $up"; fi }
device10() { ping "${address[9]}" -c 2 > $output; if ! ping "${address[9]}" -c 2 > $output; then echo "${units[9]} $down"; else echo "${units[9]} $up"; fi }
device11() { ping "${address[10]}" -c 2 > $output; if ! ping "${address[10]}" -c 2 > $output; then echo "${units[10]} $down"; else echo "${units[10]} $up"; fi }
device12() { ping "${address[11]}" -c 2 > $output; if ! ping "${address[11]}" -c 2 > $output; then echo "${units[11]} $down"; else echo "${units[11]} $up"; fi }
device13() { ping "${address[12]}" -c 2 > $output; if ! ping "${address[12]}" -c 2 > $output; then echo "${units[12]} $down"; else echo "${units[12]} $up"; fi } 
device14() { ping "${address[13]}" -c 2 > $output; if ! ping "${address[13]}" -c 2 > $output; then echo "${units[13]} $down"; else echo "${units[13]} $up"; fi }
device15() { ping "${address[14]}" -c 2 > $output; if ! ping "${address[14]}" -c 2 > $output; then echo "${units[14]} $down"; else echo "${units[14]} $up"; fi }

#Function for checking internet status with a DNS server ping.
internet() { ping 9.9.9.9 -c 4 > /dev/null; if ! ping 9.9.9.9 -c 4 > /dev/null; then echo "$interdown"; else echo "$interup"; fi }

echo "The scipt will now test your devices connection status. Please wait..."; echo
device01; device02; device03; device04; device05; device06; device07; device08; device09; device10; device11; device12; device13; device14; internet
echo; echo "The script has now completed."
