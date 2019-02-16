#!/bin/sh
# TODO:
#	- Change march=XYZ to march=native to take advantage of architecture specific opcodes
sed "s/$(grep "MAKEFLAGS=" /etc/makepkg.conf)/MAKEFLAGS=\"-j\$(nproc)\"/" /etc/makepkg.conf > ~/.makepkg.conf
sed -i "s/$(grep "PKGEXT=" ~/.makepkg.conf)/PKGEXT=\'.pkg.tar\'/" ~/.makepkg.conf
