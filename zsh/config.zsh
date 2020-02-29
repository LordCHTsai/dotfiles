alias l="la -Al"
alias vim="nvim"
alias vi="nvim"

# default editor
export EDITOR=nvim
export GIT_EDITOR=nvim

# Fzf
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse --border'

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *\** *//')
}

# fcd - cd to selected directory
fcd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fvim - use vim to open specific file
fvim() {
  local file=$(fzf --preview='head -$LINES {}')
  if [ -n "$file" ]; then
    ${EDITOR} "$file"
  fi
}
bindkey -s '\C-t' 'fvim\n'

# pyenv
eval "$(pyenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
