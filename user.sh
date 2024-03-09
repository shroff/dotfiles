#!/bin/bash

# Paru
mkdir -p $SANDBOX
cd $SANDBOX
sudo pacman -S --noconfirm rustup
rust default stable
git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd .. && rm -rf paru
# /etc/paru.conf
# BottomUp

# Sway
paru -S --noconfirm sway swayidle swaylock waybar libdecor mako libnotify wofi foot grim slurp gammastep jq python3 python-gobject python-xdg xdg-user-dirs xdg-desktop-portal-wlr wireplumber pipewire-pulse wl-clipboard gnome-keyring
# Himitsu?

# AMDGPU
paru -S --noconfirm mesa libva-mesa-driver mesa-vdpau 

# Fonts
paru -S ttf-font-awesome ttf-dejavu ttf-roboto noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
paru -S ttf-roboto-mono ttf-meslo-nerd ttf-meslo-nerd-font-powerlevel10k

# SSH Agent
systemctl --user enable --now gcr-ssh-agent.socket

# Shell (Fish)
paru -S --noconfirm fish pkgfile fisher fzf bat fd
fisher install PatrickF1/fzf.fish
fisher install franciscolourenco/done
fisher install IlanCosman/tide
fisher install jorgebucaran/nvm.fish

# File Manager
paru -S --noconfirm nemo nemo-fileroller nemo-audo-tab nemo-image-converter nemo-preview ntfs-3g gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs ffmpegthumbnailer odt2txt gst-plugins-good gst-plugins-bad p7zip unrar unace lrzip squashfs-tools
gsettings set org.cinnamon.desktop.default-applications.terminal exec foot

# Backlight control 
paru -S --noconfirm light
sudo usermod -aG video $(id -un)

# Misc tools
paru -S --noconfirm chromium firefox mpv vlc
paru -S --noconfirm youtube-dl atomicparsley
paru -S geeqie librsvg fbida gawk perl-image-exiftool gphoto2 imagemagick
paru -S --noconfirm imagemagick ghostscript libheif libjxl libraw libwebp openjpeg2 djvulibre
paru -S inetutils

# Podman (rootless)
paru -S --noconfirm podman podman-docker podman-compose docker-compose slirp4netns fuse-overlayfs
systemctl --user enable --now podman.socket
