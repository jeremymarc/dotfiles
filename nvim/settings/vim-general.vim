set diffopt+=vertical
set clipboard+=unnamedplus
set list listchars=tab:\ \ ,trail:·

set gcr=a:blinkon0  "Disable cursor blink
set visualbell      "No sounds
set mouse=a         "Allow mouse

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================

" Keep undo history across sessions, by storing in file.
" Only works all the time.
set undofile
set undodir=$HOME/.nvim/undo
set undolevels=1000
set undoreload=10000

" ================ Indentation ======================

set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
" Some file types use real tabs
au FileType {make,gitconfig} set noexpandtab sw=4

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

set nowrap    "Don't wrap lines
set linebreak "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent "fold based on indent
set foldnestmax=3     "deepest fold is 3 levels
set nofoldenable      "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=6 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set ignorecase " Ignore case when searching...
set smartcase  " ...unless we type a capital
set inccommand=split " incremental search

" ================ Formatting =======================
set formatoptions+=j " Delete comment character when joining commented lines
