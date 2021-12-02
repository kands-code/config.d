"leader
let mapleader=" "

"number
set number
set relativenumber
set cursorline

"syntax
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autoindent
set cindent

set wrap

"tabkey
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"autocompletion
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

"editor
set showcmd
set wildmenu
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map sd :set splitbelow<CR>:split<CR>
map su :set nosplitbelow<CR>:split<CR>

map <LEADER>r <C-w>l
map <LEADER>l <C-w>h
map <LEADER>d <C-w>j
map <LEADER>u <C-w>k

"" for help
map <LEADER>w <C-w><C-w>
tnoremap <Esc> <C-\><C-n>

map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><right> :vertical resize +5<CR>
map <LEADER><left> :vertical resize -5<CR>

map s <nop>
map S :w<CR>

"tab page
map tn :tabe<CR>
map tr :+tabnext<CR>
map tl :-tabnext<CR>
map tc :tabclose<CR>

"" explorer
nnoremap <space>e :CocCommand explorer<CR>

"keep trace
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set backspace=indent,eol,start

set autochdir
" close mouse mode to enable clipboard
set mouse=

"backup
set nobackup
set nowritebackup

"encoding
set encoding=utf-8

"search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap <LEADER><CR> :nohlsearch<CR>

"""""""""
"""""
""   Plugins
"""""
"""""""""

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

call plug#end()


""=====================================
"" Color Scheme
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme nord

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'nord'
set t_Co=256 " for windows

" IndentLine
let g:indentLine_char = '|'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_setColors = 0
" let g:indentLine_setConceal = 0
""=====================================

""  ____           
"" / ___|___   ___ 
""| |   / _ \ / __|
""| |__| (_) | (__ 
"" \____\___/ \___|
""                 

let g:coc_global_extensions = [
    \'coc-json',
    \'coc-html',
    \'coc-vimlsp',
    \'coc-xml',
    \'coc-syntax',
    \'coc-css',
    \'coc-clangd',
    \'coc-cmake',
    \'coc-toml',
    \'coc-yaml',
    \'coc-markdownlint',
    \'coc-sql',
    \'coc-texlab',
    \'coc-sh',
    \'coc-rust-analyzer',
    \'coc-pyright',
    \'coc-go',
    \'coc-java',
    \'coc-solargraph',
    \'coc-emmet',
    \'coc-svg',
    \'coc-tsserver',
    \'coc-explorer',
    \'coc-r-lsp'
\]

"" coc-css
autocmd FileType scss setl iskeyword+=@-@

"" coc-vimlsp
let g:markdown_fenced_languages = [
    \'vim',
    \'help'
\]

"" nvim.coc
set hidden
set updatetime=100
set shortmess+=c

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-o> coc#refresh()

noremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
    \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>+ <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

"" mma
autocmd BufNewFile,BufRead *.wl setfiletype mma
autocmd BufNewFile,BufRead *.wls setfiletype mma
autocmd BufNewFile,BufRead *.mma setfiletype mma

"" Julia
autocmd BufNewFile,BufRead *.jl setfiletype julia

"" agda
autocmd BufNewFile,BufRead *.agda setfiletype agda

"" prolog
autocmd BufNewFile,BufRead *.prolog setfiletype prolog
