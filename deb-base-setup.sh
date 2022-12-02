#!/bin/bash



# add the flathub repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# run the dnf configuration script
#sudo sh echo/Flatpak_Installer.sh
## install flatpaks



# update the system
sudo apt update -y
sudo apt dist-upgrade -y

# install your packages from the debian repos
sudo apt install htop neofetch gnome-tweaks gparted mpv fish  virt-viewer gnome-sushi
 

## Install the nvidia nonfree drivers.
## Comment out if you dont have an nvidia GPU.
##sudo dnf install akmod-nvidia -y
##sudo dnf install xorg-x11-drv-nvidia-cuda -y
##sudo dnf install vulkan -y    # install vulkan support too
##sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y 






# install VisualStudioCode
#sudo rpm--import https://packages.microsoft.com/keys/microsoft.asc
#sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'



