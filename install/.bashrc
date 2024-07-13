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
export MANROFFOPT="-c"
export JAVA_HOME="/usr/lib/jvm/default"

export SANDBOX="$HOME/sandbox"
export ANDROID_HOME="$SANDBOX/tools/android-sdk"
export FLUTTER_HOME="$SANDBOX/tools/flutter"
export CHROME_EXECUTABLE="/usr/bin/chromium"
export WINEPREFIX="$HOME/.wine"
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock

# User binaries
export PATH="$HOME/.bin:$HOME/.local/bin:$PATH"

# Android
if test -d $ANDROID_HOME; then
  echo "Found Android at $ANDROID_HOME"
  export PATH="$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"
fi

# Flutter
if test -d $FLUTTER_HOME; then
  echo "Found Flutter at $FLUTTER_HOME"
  export PATH="$FLUTTER_HOME/bin:$PATH"
fi

# Rust
if test -d "$HOME/.cargo"; then
  echo "Found Rust at $HOME/.cargo"
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# Start sway
if [ $(tty) == "/dev/tty1" ]; then
  startsway
fi
