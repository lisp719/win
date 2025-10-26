# fzf
eval "$(fzf --bash)"
export FZF_DEFAULT_COMMAND="fd -t f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d"

# gh
eval "$(gh completion -s bash)"

# git
export GIT_PAGER=delta

# starship
eval "$(starship init bash)"

# task
eval "$(task --completion bash)"

# zellij
ZELLIJ_AUTO_EXIT=true

# zoxide
eval "$(zoxide init bash)"

# pkgx aliases
alias bat="pkgx bat"
alias dua="pkgx dua"
alias lazydocker="pkgx lazydocker"
alias lazygit="pkgx lazygit"
alias rg="pkgx rg"
alias yazi="pkgx yazi"
alias zellij="pkgx zellij"

# docker alias
alias dcy="docker run --rm ghcr.io/mogurastore/dcy"
alias gibo="docker run --rm simonwhitaker/gibo"

# alias
alias fig=docker-compose
alias lzd="lazydocker"
alias lzg="lazygit"
alias mine="sudo chown -R $USER:$USER"
