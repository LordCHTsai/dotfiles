" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor

" Initialize plugin system
call plug#end()

colorscheme one
syntax on
filetype plugin on
