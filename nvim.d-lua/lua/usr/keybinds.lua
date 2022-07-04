-- some settings
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local map = vim.api.nvim_set_keymap

-- set leader
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
-- vim.g.maplocalleader = ' ' -- local leader

-- Modes
-- normal 'n'
-- insert 'i'
-- visual 'v'
-- visual_block 'x'
-- term_mode 't'
-- command_mode 'c'

-- auto insert
map('i', '(', "()<Esc>i", opts)
map('i', '[', "[]<Esc>i", opts)
map('i', '{', "{}<Esc>i", opts)
map('i', '"', '""<Esc>i', opts)

-- window
--- before
map('n', "<leader>w", "<C-w><C-w>", opts)
map('t', "<Esc>", "<C-\\><C-n>", opts)
--- split
map('n', "sr", ":set splitright<CR>:vsplit<CR>", opts)
map('n', "sl", ":set nosplitright<CR>:vsplit<CR>", opts)
map('n', "sd", ":set splitbelow<CR>:split<CR>", opts)
map('n', "su", ":set nosplitbelow<CR>:split<CR>", opts)
--- change
map('n', "<leader>r", "<C-w>l", opts)
map('n', "<leader>l", "<C-w>h", opts)
map('n', "<leader>d", "<C-w>j", opts)
map('n', "<leader>u", "<C-w>k", opts)
--- resize
map('n', "<leader><Up>", ":resize +5<CR>", opts)
map('n', "<leader><Down>", ":resize -5<CR>", opts)
map('n', "<leader><Right>", ":vertical resize +5<CR>", opts)
map('n', "<leader><Left>", ":vertical resize -5<CR>", opts)

-- buffer
map('n', "<S-l>", ":bnext<CR>", opts)
map('n', "<S-h>", ":bprevious<CR>", opts)

-- visual mode move
--- indent
map('v', '<', "<gv", opts)
map('v', '>', ">gv", opts)
--- up and down
map('v', "<A-j>", ":move .+1<CR>==", opts)
map('v', "<A-k>", ":move .-2<CR>==", opts)
-- map('v', 'p', '"_dP', opts) -- for paste
--- visual block up and down
map('x', 'J', ":move '>+1<CR>gv-gv", opts)
map('x', 'K', ":move '<-2<CR>gv-gv", opts)
map('x', "<A-j>", ":move '>+1<CR>gv-gv", opts)
map('x', "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- terminal
--- navigation
map('t', "<leader>l", "<C-\\><C-n><C-w>h", term_opts)
map('t', "<leader>d", "<C-\\><C-n><C-w>j", term_opts)
map('t', "<leader>u", "<C-\\><C-n><C-w>k", term_opts)
map('t', "<leader>r", "<C-\\><C-n><C-w>l", term_opts)

-- editor
map('n', 's', "<Nop>", opts)
map('n', 'S', ":w<CR>", opts)
--- tabline
map('n', "tn", ":tabe<CR>", opts)
map('n', "t<Right>", ":+tabnext<CR>", opts)
map('n', "t<Left>", ":-tabnext<CR>", opts)
map('n', "tq", ":tabclose<CR>", opts)
--- search
map('n', "<leader><CR>", ":nohlsearch<CR>", opts)
