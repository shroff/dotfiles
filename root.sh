#!/bin/bash

# Base term tools
pacman -S --noconfirm neovim git openssh tmux acpi htop

# Networking
pacman -S --noconfirm iwd inetutils openssh
systemctl enable --now iwd
systemctl enable --now systemd-networkd
systemctl enable --now systemd-resolved

# /etc/pacman.conf
# Enable color, Parallel Downloads

useradd -m -s /bin/bash shroff

# Sudo
pacman -S --noconfirm sudo
usermod -aG wheel shroff

pacman -S --noconfirm light
usermod -aG video shroff

