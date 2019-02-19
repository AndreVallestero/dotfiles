#!/bin/sh

sed "s/-march=\S*/-march=native/g; s/ -mtune=\S*//g; s/.*MAKEFLAGS=.*/MAKEFLAGS=\"-j\$(nproc)\"/; s/COMPRESSGZ=.*/COMPRESSGZ=(pigz -c -f -n)/; s/COMPRESSXZ=.*/COMPRESSXZ=(xz -c -z --threads=0)/" /etc/makepkg.conf > ~/.makepkg.conf