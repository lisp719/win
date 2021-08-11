source /usr/share/doc/fzf/examples/key-bindings.bash

export FZF_DEFAULT_COMMAND="fd -t f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d"

export PS1='\w$(__git_ps1)$ '

alias dcy="docker run --rm mogurastore/dcy"
alias gibo="docker run --rm simonwhitaker/gibo"

alias fd=fdfind
alias fig=docker-compose
alias mine="sudo chown -R $USER:$USER"
