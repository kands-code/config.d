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
"" coc-plugins
source "plugin/coc-plugins.vim"
"" other configs
source "plugin/others.vim"

"""""""""
"""""
""   Plugins
"""""
"""""""""

call plug#begin('~/.local/share/nvim/site/plugged')

  "" LSP
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  "" agda
  Plug 'nvim-lua/plenary.nvim'
  Plug 'isti115/agda.nvim'
  "" for input
  Plug 'derekelkins/agda-vim'

  "" themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ayu-theme/ayu-vim'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }

  Plug 'lukas-reineke/indent-blankline.nvim'

  "" markdown
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'

call plug#end()


"""""""""""
"" markdown
"""""""""""
"" disable conceal
let g:vim_markdown_conceal = 0
"" disable folding
let g:vim_markdown_folding_disabled = 1
"" enable math
let g:vim_markdown_math = 1
"" front
let g:vim_markdown_frontmatter = 1
"" indent
let g:vim_markdown_new_list_item_indent = 2
