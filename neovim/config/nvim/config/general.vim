" general settings
set number
set mouse=a
set showmatch
set formatoptions+=o
set expandtab
set tabstop=4
set shiftwidth=4

set nojoinspaces

set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=239 guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=239 guibg=NONE guifg=NONE


" listchars
set list
set listchars=
set listchars+=tab:░\ 
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿


" hidden buffer
set hidden

" vim update(fresh) time, default is 4000 (ms)
set updatetime=100

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Live substitution
set inccommand=split
