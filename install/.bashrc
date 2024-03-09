#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias cat=bat
alias vim=nvim
PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export VISUAL=nvim
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export JAVA_HOME="/usr/lib/jvm/default"

export SANDBOX="$HOME/sandbox"
export ANDROID_HOME="$SANDBOX/tools/android-sdk"
export FLUTTER_HOME="$SANDBOX/tools/flutter"
export CHROME_EXECUTABLE="/usr/bin/chromium"
export WINEPREFIX="$HOME/.wine"
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock


# User binaries
export PATH="$HOME/.bin:$HOME/.local/bin:$PATH"

# Android
if test -d $ANDROID_HOME; then
  export PATH="$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"
fi

# Flutter
if test -d $FLUTTER_HOME; then
  export PATH="$FLUTTER_HOME/bin:$PATH"
fi

# Rust
if test -d "$HOME/.cargo"; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# Start sway
if [ -z $WAYLAND_DISPLAY ] && [ -z $DISPLAY ]; then
  # GTK3
  #export GDK_BACKEND=x11 # Force XWayland

  export XDG_SESSION_TYPE=wayland
  export XDG_CURRENT_DESKTOP=sway

  # QT (install qt5-wayland)
  export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
  export QT_WAYLAND_FORCE_DPI=physical
  export QT_QPA_PLATFORMTHEME="qt5ct"
  export QT_AUTO_SCREEN_SCALE_FACTOR=0

  # Elementary
  export ECORE_EVAS_ENGINE=wayland_egl
  export ELM_ENGINE=wayland_egl

  # SDL - not a good idea
  #export SDL_VIDEODRIVER=wayland

  export CLUTTER_BACKEND=wayland
  export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

  # Firefox
  export MOZ_ENABLE_WAYLAND=1

  # Android Studio fixes
  export STUDIO_JDK=/usr/lib/jvm/java-11-openjdk-amd64/
  export _JAVA_AWT_WM_NONREPARENTING=1

  # Kitty
  alias ssh="TERM=xterm ssh"

  #exec dbus-launch --sh-syntax --exit-with-session sway
  exec sway
  exec dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK SSH_AUTH_SOCK
fi

