zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

source ~/.env
source ~/.alias

eval "$(zoxide init zsh)"
