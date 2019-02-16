#!/bin/sh
echo "Sorting mirrors"
sudo reflector --threads $(nproc) -l 128 -p https -p http -p ftp --sort rate --save /etc/pacman.d/mirrorlist
echo "Updating packages"
yay -Syyuu
echo "Updating dwm-status"
kill -s 36 $(pidof dwm-status)
