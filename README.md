# dotfiles
nimrod's own dotfiles

## Installing dependencies

These are the commands for installing all of the required packages on Arch-based Linux distros:

```bash
# Core packages
pacman -S xorg-server xorg-xinit xorg-xrandr xclip xwallpaper libxft picom pipewire pipewire-alsa pipewire-pulse wireplumber dunst libnotify git htop maim nsxiv ripgrep ttf-mononoki-nerd zsh
paru -S brave-bin neovim-git

# Music
pacman -S mpd mpc ncmpcpp

# Torrenting
pacman -S transmission-cli wireguard-tools
```

## Display configuration (Xorg)

Depending on the number and/or orientation of your displays, you should add the appropriate
`xrandr` commands to `.config/x11/xinitrc`.

Examples: 

```bash
xrandr --output DisplayPort-0 --auto

xrandr --output HDMI-A-0 --right-of DisplayPort-0 --rotate right
```

## MPD configuration

In `.zprofile`, set `MPD_HOST` and `MPD_PORT` to the appropriate values for either the local or
remote MPD server instance.

## Enabling services (systemd)

MPD:

```bash
systemctl --user enable --now mpd.service
systemctl --user enable --now mpd.socket
```

Pipewire:

```bash
systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire-pulse.socket
systemctl --user enable --now wireplumber.service
```

## What's left?
You still need to install my Neovim configuration and my forks of suckless utilities (`dwm`,
`dmenu`, `st`, ...).
