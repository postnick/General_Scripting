#!/bin/bash

#Script now checks to see if the text is in the file before adding it. Thanks reddit user /u/biggle-tiddie
cd ~

# always checks for the fastest mirrors 
if ! grep ^fastestmirror /etc/dnf/dnf.conf; then
      echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf
fi

# Enables DNF to download multiple packages at the same time, in this case 5 at a time.
# Depending on your internet connection you might want to set it to a higher number. 
if ! grep ^max_parallel_downloads /etc/dnf/dnf.conf; then
      echo "max_parallel_downloads=10"  | sudo tee -a /etc/dnf/dnf.conf
fi

# sets [Y/n] as default
if ! grep ^defaultyes /etc/dnf/dnf.conf; then
      echo "defaultyes=True" | sudo tee -a /etc/dnf/dnf.conf
fi

# always checks for the fastest mirrors 
if ! grep ^keepcache /etc/dnf/dnf.conf; then
      echo "keepcache=True" | sudo tee -a /etc/dnf/dnf.conf
fi
