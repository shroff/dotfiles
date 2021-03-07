alias vim=nvim
export EDITOR=nvim
export VISUAL=nvim

export TERMINAL='kitty --title=Term'
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

if test -f /usr/share/nvm/init-nvm.sh
  source /usr/share/nvm/init-nvm.sh
end

# basic aliases
alias erc="$EDITOR ~/.zshrc"
alias src="source ~/.zshrc"

# remapped command aliases
alias ls="ls --color=auto"

# git aliases
alias gst='git status'

alias gco='git checkout'
alias gcom='git checkout master'
alias gcob='git checkout -b'

alias gca='git commit -v -a'
alias gcaa='git commit -v -a --amend'
alias gcam='git commit -v -a -m'

#alias glo='git log --oneline --decorate --color'
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'

alias grh='git reset --hard'
alias grhh='git reset --hard HEAD~'

alias gcp='git cherry-pick'
alias grt='cd (git rev-parse --show-toplevel || echo ".")'
