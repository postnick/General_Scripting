#!/bin/bash

cd ~

# allways checks for the fastest mirrors 
sudo echo "fastestmirror=True" >> /etc/dnf/dnf.conf

# Enables dnf to download multiple packages at the same time, in this case 5 at a time.
# Depending on your internet connection you might want to set it to a higher number. 
sudo echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf

# sets [Y/n] as default
sudo echo "defaultyes=True" >> /etc/dnf/dnf.conf

#Got this from Tech Hut
sudo echo "keepcache=True" >> /etc/dnf/dnf.conf
