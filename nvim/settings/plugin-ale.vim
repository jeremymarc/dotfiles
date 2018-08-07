let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\ 'css': [],
\ 'scss': [],
\}

let g:ale_linters = {
\ 'javascript': ['prettier', 'eslint'],
\ 'typescript': ['eslint'],
\ 'css': [],
\ 'scss': [],
\}

let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 1
" let g:ale_linters_explicit = 0
let g:ale_javascript_prettier_options = '--print-width 120 --single-quote --no-semi'
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

nmap <silent> ,,p <Plug>(ale_previous_wrap)
nmap <silent> ,,n <Plug>(ale_next_wrap)
nmap <silent> ,d <Plug>(ale_fix)
