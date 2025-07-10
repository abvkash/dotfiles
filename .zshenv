export VISUAL="vi" 
export EDITOR="vi"

export GOPATH="$HOME/go" 
export NVM_DIR="$HOME/.nvm" 

typeset -U path
path=(
  /opt/homebrew/{bin,sbin}
  $HOME/bin
  /opt/homebrew/opt/{ruby,llvm}/bin
  $GOPATH/bin
  /Library/TeX/texbin
  $path
)