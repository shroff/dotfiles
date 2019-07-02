intel-ucode exfat-utils grub efibootmgr dialog wpa_supplicant network-manager

base-devel sudo git openssh neovim python3-neovim weston xorg-server-xwayland ttf-dejavu 

sway polkit i3blocks-git swayidle swaylock slurp grim rofi mako pactl pavucontrol pualsa-utils light iw acpi wl-clipboard termite termite-terminfo otf-font-awesome
gnome gnome-software-packagekit-plugin

```
#Add to .zshrc
source $HOME/.profile
source $HOME/.zshrc.custom
```


```
systemd-inhibit --mode=block sudo pacman -Syu
```

```
# /etc/udev/rules.d/99-lowbat.rules

SUBSYSTEM=="power_supply", ATTR{status}=="Discharging", ATTR{capacity}=="[0-5]", RUN+="/usr/bin/systemctl hibernate"
```

