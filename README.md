# dotfiles

nimrod's own dotfiles

## Installing dependencies

These are the commands for installing all of the required packages on Arch-based Linux distros:

```bash
# Core packages
pacman -S git htop neovim pipewire pipewire-alsa pipewire-pulse wireplumber ripgrep zsh

# Wayland packages
pacman -S wayland wayland-protocols wlroots0.19 wl-clipboard wlr-randr wlsunset wofi awww foot slurp grim ttf-mononoki-nerd
paru -S matugen wayprompt

# Browser
pacman -S librewolf

# Music
pacman -S mpd mpc ncmpcpp

# Torrenting
pacman -S transmission-cli wireguard-tools
```

## Display configuration (Wayland)

Depending on the number and/or orientation of your displays, you should add the appropriate
`wlr-randr` commands to `.local/bin/dwl-startup`.

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
You still need to install my [neovim](https://github.com/ImaNimrod/based-nvim) configuration as well
as my build of [dwl](https://github.com/ImaNimrod/dwl)
