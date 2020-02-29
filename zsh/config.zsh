alias l="la -Al"
alias vim="nvim"
alias vi="nvim"

# default editor
export EDITOR=nvim
export GIT_EDITOR=nvim

# fzf
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse --border'

# pyenv
eval "$(pyenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
