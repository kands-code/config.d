"""""""""""""""
"" color scheme
"""""""""""""""

set termguicolors

let ayucolor = 'light'
colorscheme ayu

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'ayu'
set t_Co=256 " for windows

" rainbow
let g:rainbow_active = 1

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
