#!/bin/sh
# TODO:
#	- Change march=XYZ to march=native to take advantage of architecture specific opcodes

if [[ $EUID != 0 ]]; then
    echo "Script must be run with root privilages"
    exit 1
fi
sed "s/$(grep "MAKEFLAGS=" /etc/makepkg.conf)/MAKEFLAGS=\"-j\$(nproc)\"/" /etc/makepkg.conf > ~/.makepkg.conf
sed -i "s/$(grep "COMPRESSXZ=" ~/.makepkg.conf)/COMPRESSXZ=(xz -c -z --threads=0)/" ~/.makepkg.conf