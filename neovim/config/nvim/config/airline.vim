" Airline is a plugin that makes the status line look fancier.
" It requires a custom font (with arrows), and is completely optional
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Customization
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#coc#enabled = 1
" let g:airline_statusline_ontop = 1
