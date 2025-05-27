# fzf
eval "$(fzf --bash)"
export FZF_DEFAULT_COMMAND="fd -t f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d"

# PS1
. /usr/share/git-core/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1)$ '

# docker alias
alias dcy="docker run --rm ghcr.io/mogurastore/dcy"
alias gibo="docker run --rm simonwhitaker/gibo"

# alias
alias fig=docker-compose
alias lzd="lazydocker"
alias lzg="lazygit"
alias mine="sudo chown -R $USER:$USER"

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
. /home/linuxbrew/.linuxbrew/etc/bash_completion.d/brew
export HOMEBREW_NO_AUTO_UPDATE=1

# gh
eval "$(gh completion -s bash)"

# zellij
ZELLIJ_AUTO_EXIT=true
eval "$(zellij setup --generate-auto-start bash)"
