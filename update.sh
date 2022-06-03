#!/bin/bash

#Assumes you have Neofetch / Flatpaks / Piholes installed. Comment out whats not needed

#Debian based servers
apt-get update
apt-get upgrade -y
#I like a clean system, but these may or may not be helpful.
#apt-get autoclean -y
#apt-get autoremove -y

#Fedora/Redhat machines
#dnf update -y

#Updates Flatpaks
flatpak update -y

#Updates Pihole if you have one
#pihole -up

#Ask if user wants to reboot the systm? Useful for home servers
read -r -p "Reboot? [Y/n] " input
case $input in
	[yY][eE][sS]|[yY])
		echo "You have opted to reboot!"
			systemctl reboot -i
			;;
	[nN][oO]|[nN])
		echo "You will not reboot right now!"
		neofetch
			exit 1
			;;
	*)
		echo "Invalid input..."
		neofetch
		exit 1
		;;
esac
