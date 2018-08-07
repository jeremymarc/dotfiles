" Mnemonic: *q*uickfix *c*lose
nnoremap <silent> <leader>qc :cclose<CR>
" Mnemonic: *q*uickfix *o*pen
nnoremap <silent> <leader>qo :copen<CR>
" Mnemonic: *q*uickfix *n*ext
nnoremap <silent> <leader>qn :cn<CR>
" Mnemonic: *q*uickfix *p*revious
nnoremap <silent> <leader>qp :cp<CR>
" Mnemonic: *q*uickfix */*
nnoremap <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
" Mnemonic: *q*uickfix *g*rep
nnoremap <silent> <leader>qg :execute "Rg --smart-case '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>
nnoremap <silent> <leader>ag :execute "Rg --smart-case '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>
