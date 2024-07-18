zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
#bindkey '^[[A' up-line-or-search
#bindkey '^[[B' down-line-or-search

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%B%F{green}%1~%f%b${vcs_info_msg_0_} %#  '
zstyle ':vcs_info:git:*' formats ' %F{red}%b%f'


source ~/.alias

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git|sort -r'
alias fzfp="fzf --preview='bat --color=always {}' --preview-window='right:65%'"
alias fzf-glow="fzf --preview='glow --style=dark {}' --preview-window='right:65%'"
# eval "$(zoxide init zsh)"
# eval "$(mcfly init zsh)"
