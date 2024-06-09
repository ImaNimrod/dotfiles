# dotfiles
nimrod's own dotfiles

## package dependencies
This is a command for installing all of the required packages on Arch-based Linux distros:

`pacman -S xorg-server xorg-xinit xorg-xrandr xwallpaper xclip picom libxft zsh pipewire pipewire-alsa pipewire-pulse wireplumber pipewire-roc maim dunst libnotify mpd mpc ncmpcpp htop lm_sensors neovim ripgrep ttf-mononoki-nerd zathura zathura-pdf-poppler git nsxiv`

These packages do not include any of the packages required for the basic system install.
Brave broswer can be acquired through the AUR packages `brave` or `brave-bin`.

## enabling services (systemd)
mpd:

`systemctl --user enable --now mpd.service`

`systemctl --user enable --now mpd.socket`

pipewire:

`systemctl --user enable --now pipewire.socket`

`systemctl --user enable --now pipewire-pulse.socket`

`systemctl --user enable --now wireplumber.service`

## ROC configuration
Depending on whether your computer is the roc source or the sink, you only should
keep the appropriate pipewire configuration file. If your computer is the ROC sink, you should remove the `.config/pipewire/pipewire.conf.d/roc-source.conf` file.

## configuring hosts
In `.zprofile`, set `MPD_HOST` and `MPD_PORT` to the appropriate values for the running mpd server instance.
In `.config/pipewire/pipewire.conf.d/roc-sink.conf`, change the line containing `remote.ip` to the IP address of
the device to receive audio

## display configuration (Xorg)
Depending on the number and/or orientation of your displays, you should add the appropriate `xrandr` commands to `.config/x11/xinitrc`.

Example commands:

`xrandr --output DisplayPort-0 --auto`

`xrandr --output HDMI-A-0 --right-of DisplayPort-0 --rotate right`
