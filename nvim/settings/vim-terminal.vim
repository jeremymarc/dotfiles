" Remaps 2x <Esc> to exit terminal-mode
" - One <Esc> only will exit command line insert mode to command line normal
"   mode (Vim's window will still be in "terminal" mode)
" - Second <Esc> will exit "terminal" mode on that window and make the whole
"   window into normal mode.
tnoremap <Esc><Esc> <C-\><C-n>

" Please also see the mappings for navigating out of a terminal window in
" plugin-tmux-navigator.vim file
