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
