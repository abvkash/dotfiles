export GOPATH="$HOME/go" NVM_DIR="$HOME/.nvm" VISUAL="vi" EDITOR="vi"
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:/opt/homebrew/opt/ruby/bin:/opt/homebrew/opt/llvm/bin:$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$GOPATH/bin:/Library/TeX/texbin:$PATH"

# Use GNU ls if available, otherwise default ls
command -v gls &>/dev/null && gls --version | grep -q "GNU coreutils" && \
  alias ls="gls -GhF --color=auto --group-directories-first" || \
  alias ls="ls -GhF --color=auto"
alias grep="grep --color=auto"

autoload -Uz vcs_info compinit && compinit
precmd() { vcs_info }
zstyle ":vcs_info:git:*" formats "(%b)" # Show git branch on RPROMPT
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}" 
zstyle ":completion:*" list-dirs-first true
setopt PROMPT_SUBST
export RPROMPT="\$vcs_info_msg_0_" PROMPT="%n@%m:%F{blue}%~%f %# "

# NVM lazy loading
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  nvm_cmds=(nvm node npm yarn)
  for cmd in $nvm_cmds ; do
    alias $cmd="unalias $nvm_cmds && unset nvm_cmds && . $NVM_DIR/nvm.sh && $cmd"
  done
fi

bindkey "^[f" forward-word
bindkey "^[b" backward-word

bindkey -v
bindkey '^R' history-incremental-search-backward
