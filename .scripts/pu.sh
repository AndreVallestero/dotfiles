#!/bin/sh
sudo systemctl start reflector
yay -Syyuu
kill -s 36 $(pidof dwm-status)
