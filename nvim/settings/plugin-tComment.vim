" tComment
" ========================================
" extensions for tComment plugin. Normally
" tComment maps 'gcc' to comment current line
" this adds 'gcp' comment current paragraph (block)
" using tComment's built in <c-_>p mapping
nmap <silent> gcp <c-_>p

" Ctrl-/ to toggle comments
" TODO: investigate: it's requiring two taps to work...
map <C-/> :TComment<CR>
imap <C-/> <C-o>:TComment<CR>
map <D-/> :TComment<CR>
imap <D-/> <C-o>:TComment<CR>
