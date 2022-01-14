""""""""""""""
"" basic
""""""""""""""
"" number
set number
set relativenumber
set cursorline
"" disable backup
set nobackup
set nowritebackup
set noswapfile

""""""""""""""
"" syntax
""""""""""""""
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

""""""""""""""
"" indent
""""""""""""""
set autoindent
set cindent
set tabstop=2
set shiftwidth=2
set expandtab


""""""""""""""
"" editor
""""""""""""""
set showcmd
set wildmenu
"" wrap
set wrap
"" search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

"" some others
set backspace=indent,eol,start
set autochdir
set mouse="i"
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
