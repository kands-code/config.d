"" autocompletion
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i

"" window
map <leader>w <C-w><C-w>
tnoremap <Esc> <C-\><C-n>

map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map sd :set splitbelow<CR>:split<CR>
map su :set nosplitbelow<CR>:split<CR>

map <leader>r <C-w>l
map <leader>l <C-w>h
map <leader>d <C-w>j
map <leader>u <C-w>k

map <leader><up> :res +5<CR>
map <leader><down> :res -5<CR>
map <leader><right> :vertical resize +5<CR>
map <leader><left> :vertical resize -5<CR>

"" editor
map s <nop>
map S :w<CR>

map tn :tabe<CR>
map tr :+tabnext<CR>
map tl :-tabnext<CR>
map tc :tabclose<CR>

noremap <leader><CR> :nohlsearch<CR>
