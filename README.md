# dotfiles
nimrod's own dotfiles

## Installing dependencies

These are the commands for installing all of the required packages on Arch-based Linux distros:

```bash
pacman -S xorg-server xorg-xinit xorg-xrandr xwallpaper xclip picom libxft zsh pipewire pipewire-alsa pipewire-pulse wireplumber maim dunst mpd mpc ncmpcpp htop lm_sensors ripgrep ttf-mononoki-nerd git nsxiv

# AUR packages
paru -S brave-bin neovim-git
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
remote MPD server instance. In `.config/pipewire/pipewire.conf.d/roc-sink.conf`, change the line
containing `remote.ip` to the IP address of the device to receive audio.

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
