#
# ~/.bash_profile
#

# Default programs
export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"

# Wayland variables
export QT_QPA_PLATFORM="wayland"
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
export GDK_BACKEND="wayland"
export MOZ_ENABLE_WAYLAND=1
export WLR_NO_HARDWARE_CURSORS=1

PATH=$PATH:$HOME/.yarn/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc && sway --unsupported-gpu

