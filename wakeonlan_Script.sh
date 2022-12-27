#!/bin/bash

#You need to install wakeonlan on debian based machines.
#I also have seen ether-wake work on fedora/rhel

PS3='Please enter your choice: '
options=("PC1" "PC2" "PC3" "PC4" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "PC1")
		sudo wakeonlan AA:BB:CC:DD:EE:FF
            ;;
        "PC2")
		sudo wakeonlan AA:BB:CC:DD:EE:FF
            ;;
        "PC3")
            	sudo wakeonlan AA:BB:CC:DD:EE:FF
            ;;
        "PC4")
		sudo wakeonlan AA:BB:CC:DD:EE:FF
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

