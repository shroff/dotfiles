# wayland
export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland
export QT_QPA_PLATFORM=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
export QT_WAYLAND_FORCE_DPI=physical
export ECORE_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl
export SDL_VIDEODRIVER=wayland

# scaling for HiDPI devices
export GDK_SCALE=2

alias vim='nvim'
alias startsway='exec dbus-launch --sh-syntax --exit-with-session sway'

export PATH="$HOME/.bin:$PATH:/opt/android-sdk/platform-tools/"
export TERMINAL=alacritty
export EDITOR=nvim
export VISUAL=nvim
