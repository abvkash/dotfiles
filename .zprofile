# Use gls if your system has it
if command -v gls &>/dev/null && gls --version | grep -q 'GNU coreutils'; then
  alias ls='gls -GhF --color=auto --group-directories-first'
else
  alias ls='ls -GhF --color=auto'
fi

alias grep='grep --color=auto'

# Showing git branch on RPROMPT
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST

export RPROMPT="\$vcs_info_msg_0_"
export PROMPT='%n@%m %F{blue}%~%f %# '

export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Lazy loading nvm
if [[ -s "$NVM_DIR/nvm.sh" ]]; then
  NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
  NODE_GLOBALS+=(node nvm)

  _load_nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  }

  for cmd in "${NODE_GLOBALS[@]}"; do
    eval "function ${cmd}(){ unset -f ${NODE_GLOBALS[*]}; _load_nvm; unset -f _load_nvm; ${cmd} \$@; }"
  done

  # unset NODE_GLOBALS
  # unfunction _load_nvm
fi

[ -s "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ] \
  && \. "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"

export VISUAL="vi"
export EDITOR="vi"
export GOPATH=$HOME/go
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:~/bin:/opt/homebrew/opt/ruby/bin:$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$GOPATH/bin:$PATH"

zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-dirs-first true
autoload -Uz compinit && compinit
