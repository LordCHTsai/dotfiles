Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

nnoremap <silent> <C-t> :Files<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-_> :Commands<CR>

" Let Ag only search content
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
