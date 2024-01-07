#!/bin/zsh

# default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"

# ~/ clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export GTK_THEME="Adwaita:dark"
export LESSHISTFILE="-"
export NO_AT_BRIDGE=1 
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export _JAVA_AWT_WM_NONREPARENTING=1

# add ~/.local/bin to path
export PATH="$CARGO_HOME/bin:$PATH:${$(find $HOME/.local/bin -type d -printf %p: )%%:}"

# automatically start X on current tty if not already running
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
