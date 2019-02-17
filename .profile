#!/bin/sh
# Profile file. Runs on login.

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export QT_QPA_PLATFORMTHEME="qt5ct"


[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
