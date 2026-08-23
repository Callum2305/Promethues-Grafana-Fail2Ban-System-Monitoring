#!/bin/bash

echo "# HELP fail2ban_banned_total Total currently banned IPs"
echo "# TYPE fail2ban_banned_total gauge"
fail2ban-client status sshd | grep "Currently banned" | awk '{print "fail2ban_banned_total " $NF}'

echo "# HELP fail2ban_failed_total Total current failed login attempts"
echo "# TYPE fail2ban_failed_total gauge"
fail2ban-client status sshd | grep "Currently failed" | awk '{print "fail2ban_failed_total " $NF}'
