alias l="la -Al"
alias vim="nvim"
alias vi="nvim"

# default editor
export EDITOR=nvim
export GIT_EDITOR=nvim

# pyenv
eval "$(pyenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
