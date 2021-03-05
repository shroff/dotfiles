alias vim=nvim
export EDITOR=nvim
export VISUAL=nvim

export TERMINAL='termite --title=Term'
export TERM=xterm

export SANDBOX="$HOME/sandbox"
export JAVA_HOME="/usr/lib/jvm/default"
export ANDROID_HOME="$HOME/Android/Sdk"

# User binaries
export PATH="$HOME/.bin:$HOME/.local/bin:$PATH"

# Flutter
export PATH="$SANDBOX/flutter/bin:$PATH"

# Android
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# Wine
export WINEPREFIX="$HOME/.wine"

# Rust (cargo)
export PATH="$HOME/.cargo/bin:$PATH"
