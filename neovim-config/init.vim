let mapleader=' '
set encoding=utf-8
set fileencoding=utf-8

"" basic config
source "plugin/basic.vim"

"" keybinding config
source "plugin/keybinds.vim"

"" themes
source "plugin/themes.vim"

"" coc-config
source "plugin/coc-config.vim"

"""""""""
"""""
""   Plugins
"""""
"""""""""

call plug#begin('~/.local/share/nvim/site/plugged')

    "" LSP
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "" nix
    Plug 'LnL7/vim-nix'

    "" agda
    Plug 'nvim-lua/plenary.nvim'
    Plug 'isti115/agda.nvim'
    "" for input
    Plug 'derekelkins/agda-vim'

    "" themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'srcery-colors/srcery-vim'
    Plug 'Yggdroot/indentLine'

call plug#end()
