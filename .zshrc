alias ls="ls -GhF" 
alias grep="grep --color=auto --line-number"

zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}" "r:|[._-]=* r:|=*" "l:|=* r:|=*"

autoload -Uz vcs_info compinit && compinit
zstyle ":vcs_info:git:*" formats "(%b)" # Show git branch
precmd() { vcs_info }
setopt PROMPT_SUBST
export PROMPT="%n@%m %F{blue}%~%f %# " 
export RPROMPT="\$vcs_info_msg_0_"

bindkey -v 
bindkey '^[f' forward-word 
bindkey '^[b' backward-word 
bindkey '^R' history-incremental-search-backward

# lazy loading nvm
if [[ -s "$HOME/.nvm/nvm.sh" ]]; then
  nvm_cmds=(nvm node npm yarn)
  for cmd in $nvm_cmds; do
    alias $cmd="unalias $nvm_cmds && unset nvm_cmds && . $NVM_DIR/nvm.sh && $cmd"
  done
fi
