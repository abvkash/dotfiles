export GOPATH="$HOME/go"
export NVM_DIR="$HOME/.nvm"
path=(
  "/opt/homebrew/bin"
  "/usr/local/bin"
  "/usr/local/sbin"
  "~/bin"
  "/opt/homebrew/opt/ruby/bin"
  "$(ruby -r rubygems -e 'puts Gem.user_dir')/bin"
  "$GOPATH/bin"
  "/opt/homebrew/opt/llvm/bin"
  $path
)
export PATH

# Use gls
if command -v gls &>/dev/null && gls --version | grep -q "GNU coreutils"; then
  alias ls="gls -GhF --color=auto --group-directories-first"
else
  alias ls="ls -GhF --color=auto"
fi

alias grep="grep --color=auto"

export VISUAL="vi"
export EDITOR="vi"

# Showing git branch on RPROMPT
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ":vcs_info:git:*" formats "(%b)"
setopt PROMPT_SUBST

zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-dirs-first true
autoload -Uz compinit && compinit

export RPROMPT="\$vcs_info_msg_0_"
export PROMPT="%n@%m %F{blue}%~%f %# "

if [ -s "$HOME/.nvm/nvm.sh" ]; then
  nvm_cmds=(nvm node npm yarn)
  for cmd in $nvm_cmds ; do
    alias $cmd="unalias $nvm_cmds && unset nvm_cmds && . $NVM_DIR/nvm.sh && $cmd"
  done
fi

# [ -s "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ] \
#   && \. "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
