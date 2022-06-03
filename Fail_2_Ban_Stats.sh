#!/bin/bash

zgrep 'Ban' /var/log/fail2ban.log*

fail2ban-client status sshd
