let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_smart_case = 1

if !exists('g:deoplete#keyword_patterns')
  let g:deoplete#keyword_patterns = {}
endif
let g:deoplete#keyword_patterns.default = '\h\w*'
let g:deoplete#keyword_patterns.tex = '\\?[a-zA-Z_]\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" Define dictionary.
if !exists('g:deoplete#sources#dictionary#dictionaries')
  let g:deoplete#sources#dictionary#dictionaries = {}
endif
let g:deoplete#sources#dictionary#dictionaries.javascript = expand('~/.yadr/vim/dict/javascript.dict')

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" Close popup by <ESC>.
"inoremap <expr><ESC> pumvisible() ? deoplete#close_popup() : "\<ESC>"

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "\<CR>")
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
