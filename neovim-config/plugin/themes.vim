"""""""""""""""
"" color scheme
"""""""""""""""

set termguicolors
colorscheme srcery

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'srcery'
set t_Co=256 " for windows

" IndentLine
let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = ['coc-explorer']
