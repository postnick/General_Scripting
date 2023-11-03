### GIT Setup
These commands to configure git on windows or linux
``` shell
git config --global user.email "user@email.com"
git config --global user.name "First Last"
```
***
## Simlink
ln -s Source  >  Destination
```shell
ln -s /StartPoint /EndPoint
```	
***
## Aliases
Alias will run in your current session, but you can also keep it on your system forever by editing the .bashrc file. 
```shell
alias ls="ls -lhF --time-style=long-iso --color=auto --ignore=lost+found"
```
***
## Bash Scripts 
Every bash file starts like this. The file should usually be saved as a .sh file type. You need to chmod a+x the file before you can execute.
```bash
#!/bin/bash
```
***
## CRON
A tool to schedule tasks
***
## Stress
```shell
stress -c 4 -i 4 -m 4 --vm-bytes 512M -t 60s
```
***
## Fix Corrupted Zips
```shell
zip -FF Corrupted.zip --out New.zip

unzip New.zip
```
https://superuser.com/questions/23290/terminal-tool-linux-for-repair-corrupted-zip-files
***
## Ditto
This combines multiple zip files into one super file

```shell
ditto -x -k -v 
Takeout_001.zip Takeout_002.zip Takeout_003.zip Takeout_004.zip Takeout_005.zip Takeout_006.zip Takeout_007.zip Takeout_008.zip Takeout_009.zip Takeout_010.zip result 1>log.txt 2>&1
```
***
## SSH and [[SSH Key Notes|SSH Keygen]]
Generate a new SSH Key with ed25519 encryption
```shell
ssh-keygen -t ed25519 
```

Copy that SSH-ID to your remote devices to allow for passwordless entry.
```shell
ssh-copy-id user@device
```
*** 
