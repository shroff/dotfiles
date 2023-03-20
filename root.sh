#!/bin/bash

# Base term tools
pacman -S --noconfirm acpi tmux sudo git neovim openssh base-devel
# Sway
pacman -S --noconfirm sway swayidle swaylock waybar light mako wofi kitty grim slurp gammastep mesa-vdpau jq python3 python-gobject python-xdg xdg-user-dirs xdg-desktop-portal-wlr wireplumber pipewire-pulse ttf-font-awesome nerd-fonts-meslo wl-clipboard
pacman -S --noconfirm chromium firefox libnotify libdecor mpv youtube-dl atomicparsley
pacman -S --noconfirm nemo ntfs-3g gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs ffmpegthumbnailer odt2txt gst-plugins-good gst-plugins-bad p7zip unrar unace lrzip squashfs-tools
pacman -S --noconfirm imagemagick ghostscript libheif libjxl libraw libwebp openjpeg2 djvulibre
pacman -S --noconfirm fish pkgfile fisher fzf bat fd



