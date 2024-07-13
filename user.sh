#!/bin/bash

# Sway
paru -S --noconfirm sway swayidle swaylock waybar libdecor swaync libnotify wofi foot grim slurp gammastep jq python3 python-gobject python-xdg xdg-user-dirs xdg-desktop-portal-wlr wireplumber pipewire-pulse wl-clipboard gnome-keyring polkit-gnome

# Himitsu?

# AMDGPU
paru -S --noconfirm mesa libva-mesa-driver mesa-vdpau 

# Fonts
paru -S --noconfirm ttf-font-awesome ttf-dejavu ttf-roboto noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-roboto-mono ttf-meslo-nerd ttf-meslo-nerd-font-powerlevel10k

# SSH Agent
systemctl --user enable --now gcr-ssh-agent.socket

# Shell (Fish)
paru -S --noconfirm fish pkgfile fisher fzf bat fd
fish -c 'fisher install PatrickF1/fzf.fish'
fish -c 'fisher install franciscolourenco/done'
fish -c 'fisher install jorgebucaran/nvm.fish'
fish -c 'fisher install IlanCosman/tide'

# File Manager
paru -S --noconfirm nemo nemo-fileroller nemo-audo-tab nemo-image-converter nemo-preview ntfs-3g gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs ffmpegthumbnailer odt2txt gst-plugins-good gst-plugins-bad p7zip unrar unace lrzip squashfs-tools
gsettings set org.cinnamon.desktop.default-applications.terminal exec foot

# Backlight control 
paru -S --noconfirm light

# Misc tools
paru -S --noconfirm ungoogled-chromium-bin firefox mpv vlc
paru -S --noconfirm youtube-dlp atomicparsley
paru -S --noconfirm geeqie librsvg fbida gawk perl-image-exiftool gphoto2 imagemagick
paru -S --noconfirm imagemagick ghostscript libheif libjxl libraw libwebp openjpeg2 djvulibre

# Podman (rootless)
paru -S --noconfirm podman podman-docker podman-compose docker-compose slirp4netns fuse-overlayfs
systemctl --user enable --now podman.socket
