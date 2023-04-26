# History
HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt inc_append_history

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt prompt_subst
NEWLINE=$'\n'
PROMPT='%F{yellow}%~%f %F{blue}${vcs_info_msg_0_}%f${NEWLINE}%F{green}❯%f '

# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"
autoload -Uz compinit
compinit

# Aliases
alias xi="sudo xbps-install -Su"
alias xr="sudo xbps-remove -ROo"
alias xq="xbps-query -Rs"
alias pow="nohup sh -c 'i3-msg \"[all] kill\" && sudo poweroff' >/dev/null 2>&1 &"
alias reb="nohup sh -c 'i3-msg \"[all] kill\" && sudo reboot' >/dev/null 2>&1 &"
alias v="nvim"
alias fm="vifm"
alias la="ls -a"
alias lla="ls -la"
alias gi="git init"
alias gd="git ls-files | xargs -n 1 dirname | uniq"
alias gf="git ls-files"
alias gro="git remote add origin"
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gr="git reset"
alias gp="git push"

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Key bindings
bindkey -e
bindkey -M vicmd '^[[3~' delete-char
bindkey "^[[3~" delete-char
