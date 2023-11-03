Update an Alias for LS for example to show better info

Do this to set your one time alias in that shell session. 
alias ls="ls -lhF --time-style=long-iso --color=auto --ignore=lost+found"

To use an alias in every shell edit /home/nick/.bashrc and look for the aliases

To add this to #fish edit or create ~/.config/fish/config.fish without using SU or SUDO
add the alias just as above and save. this is basicly bashrc for fish.

```bash
#Fixes the LS command
  alias ls="ls -lhF --time-style=long-iso --color=auto --ignore=lost+found"

#Fixes the df command
  alias df="df -h -x squashfs -x tmpfs -x devtempfs"

#Makes DU command better
  alias du0="sudo du -hc --max-depth=0"
  alias du1="sudo du -hc --max-depth=1"
  alias du2="sudo du -hc --max-depth=2"
   
#Makes Debian installing faster
  alias install="sudo apt install"
  alias upgrade="sudo apt update && sudo apt dist-upgrade"
  alias aptclean="sudo apt autoclean && sudo apt autoremove"
#If you use Ubuntu or Snaps
  alias updateall="sudo apt update && sudo apt dist-upgrade && sudo flatpak update -y && sudo snap refresh"
#If You only use Debian and Flatpaks
  alias updateall="sudo apt update && sudo apt dist-upgrade && sudo flatpak update -y"
#If You use Fedora and Flatpaks
  alias updateall="sudo dnf update -y && sudo flatpak update -y"
	
#Makes Fedora Install Faster
  alias install="sudo dnf install" 
  alias upgrade="sudo dnf upgrade -y" 
  alias dnfclean="sudo dnf clean all"

#Tells you your IP address NEED CURL
  alias extip="curl icanhazip.com"

#AWK has issues inside of an alias
  alias intip="ip addr | awk -F' |/' '$5=="inet" && $8!="scope" {print $6}'"

#This is for VM's on proxmox
  alias ethip="ip -4 addr show enp6s18 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'"

#This measures the line speed
  alias netspeed="cat /sys/class/net/enp1s0/speed && cat /sys/class/net/enp0s31f6/speed"

#Cleans up the MOUNT command
  alias lsmount="mount | column -t"
   
#This needs python3 (whitch ppython3)
  alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"
```
