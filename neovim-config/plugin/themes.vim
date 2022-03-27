"""""""""""""""
"" color scheme
"""""""""""""""

set termguicolors
" let ayucolor = 'dark'
colorscheme onehalfdark

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onehalfdark'
set t_Co=256 " for windows

" indent
let g:indent_blankline_space_char_blankline = '.'
let g:indentLine_fileTypeExclude = [
  \'lspinfo',
  \'coc-explorer',
  \'packer',
  \'checkhealth',
  \'help',
  \'']
let g:indent_blankline_buftype_exclude = [
  \'terminal',
  \'log']
