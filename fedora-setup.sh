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


# add rpm free/nonfree repo
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y


# add the flathub repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# update the system
sudo dnf update -y

## Install the nvidia nonfree drivers.
## Comment out if you dont have an nvidia GPU.
	##sudo dnf install akmod-nvidia -y
	##sudo dnf install xorg-x11-drv-nvidia-cuda -y
	##sudo dnf install vulkan -y    # install vulkan support too
	##sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y 

## install flatpaks - See the Flatpack.sh file

# install VisualStudioCode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code -y

# install your packages from the fedora repos
sudo dnf install htop neofetch gnome-tweak-tool gparted mpv fish pop-shell virt-viewer google-chrome-stable mscore-fonts-all

