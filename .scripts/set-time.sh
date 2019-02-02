#!/bin/sh
sudo systemctl enable ntpd
sudo systemctl start ntpd
sudo systemctl restart systemd-timesyncd.service
sudo timedatectl set-ntp true
sudo ntpd stop
sudo ntpdate ntp.ubuntu.com
sudo ntpd start
