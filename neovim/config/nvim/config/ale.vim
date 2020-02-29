Plug 'w0rp/ale'

" let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

" respect python linters installed by pipenv
let g:ale_python_auto_pipenv = 1

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

let g:ale_sign_error = '⛔'
let g:ale_sign_warning = '⚠️'

" let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_echo_msg_format = '%linter% > %s'

let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'css': ['stylelint', 'prettier'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'css': ['stylelint', 'prettier'],
\   'handlebars': ['ember-template-lint'],
\}
