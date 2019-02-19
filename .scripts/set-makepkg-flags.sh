#!/bin/sh

sed "s/-march=\S*/march=native/g; s/-mtune=\S*/\0/g; s/.*MAKEFLAGS=.*/MAKEFLAGS=\"-j\$(nproc)\"/; s/COMPRESSXZ=.*/COMPRESSXZ=(xz -c -z --threads=0)/" /etc/makepkg.conf > ~/.makepkg.conf