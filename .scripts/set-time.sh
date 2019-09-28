#!/bin/sh
[ `id -u` -ne 0 ] && sudo $0
sudo ntpdate ntp.ubuntu.com
sudo systemctl restart systemd-timesyncd.service
