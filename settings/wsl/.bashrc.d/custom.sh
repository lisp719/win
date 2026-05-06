# environment variables
export COPILOT_MODEL="gpt-5-mini"
export EDITOR="edit.exe"

# fzf
eval "$(fzf --bash)"
export FZF_DEFAULT_COMMAND="fd -t f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d"

# gh
eval "$(gh completion -s bash)"

# git
export GIT_PAGER=delta

# jj
source <(jj util completion bash)

# starship
eval "$(starship init bash)"

# task
eval "$(task --completion bash)"

# zellij
ZELLIJ_AUTO_EXIT=true

# docker alias
alias dcy="docker run --rm ghcr.io/mogurastore/dcy"
alias gibo="docker run --rm simonwhitaker/gibo"

# hermes alias
alias hermes='docker run -it --rm \
  -v ~/.hermes:/opt/data \
  -e HERMES_UID="$(id -u)" \
  -e HERMES_GID="$(id -g)" \
  ghcr.io/lisp719/hermes-slim-image:latest'

alias hermes-cwd='docker run -it --rm \
  -v ~/.hermes:/opt/data \
  -v "$(pwd)":/workspace \
  -w /workspace \
  -e HERMES_UID="$(id -u)" \
  -e HERMES_GID="$(id -g)" \
  ghcr.io/lisp719/hermes-slim-image:latest'

# alias
alias fig=docker-compose
alias lzd="lazydocker"
alias lzg="lazygit"

# Because the destination will not be saved, write it towards the end.
# zoxide
eval "$(zoxide init bash)"
