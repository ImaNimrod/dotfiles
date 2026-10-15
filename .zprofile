#!/bin/zsh

# default programs
export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="librewolf"

# ~/ clean-up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"
export GTK_THEME="Adwaita:dark"
export LESSHISTFILE="-"
export NO_AT_BRIDGE=1 
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export _JAVA_AWT_WM_NONREPARENTING=1

# mpd host config
export MPD_HOST="MPD SERVER IP ADDRESS"
export MPD_PORT="MPD SERVER PORT"

# add ~/.local/bin and cargo directory to path
export PATH="$CARGO_HOME/bin:${$(find $HOME/.local/bin -type d -printf %p: )%%:}:$PATH"

# automatically start X on current tty if not already running
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s dwl >/dev/null 2>&1 && exec dbus-run-session sh -c 'dwmstatus | dwl -s "dwl-startup"'
