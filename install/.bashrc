#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -z $WAYLAND_DISPLAY ] && [ -z $DISPLAY ]; then
  # GTK3
  #export GDK_BACKEND=x11 # Force XWayland

  export XDG_SESSION_TYPE=wayland
  export XDG_CURRENT_DESKTOP=sway

  # QT (install qt5-wayland)
  export QT_QPA_PLATFORM=wayland-egl
  #export QT_QPA_PLATFORM=xcb # Force XWayland
  export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
  export QT_WAYLAND_FORCE_DPI=physical
  export QT_QPA_PLATFORMTHEME="qt5ct"
  export QT_AUTO_SCREEN_SCALE_FACTOR=0

  # Elementary
  export ECORE_EVAS_ENGINE=wayland_egl
  export ELM_ENGINE=wayland_egl

  # SDL
  #export SDL_VIDEODRIVER=wayland

  export CLUTTER_BACKEND=wayland
  export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

  # Firefox
  export MOZ_ENABLE_WAYLAND=1

  exec dbus-launch --sh-syntax --exit-with-session sway
fi

