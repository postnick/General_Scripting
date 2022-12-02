#!/bin/bash

cd ~
#This will posibly error bigtime
# run the dnf configuration script
#sudo sh ~/fedora-setup/configure-dnf.sh


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

