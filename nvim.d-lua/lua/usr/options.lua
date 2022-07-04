-- stop backup
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.writebackup = false

-- number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- open clipboard
vim.opt.clipboard = "unnamedplus"

-- commandline height
vim.opt.cmdheight = 1

-- mostly just for cmp
vim.opt.completeopt = { "menuone", "noselect" }

-- conceallevel
vim.opt.conceallevel = 0

-- encoding
vim.opt.fileencoding = "utf-8"

-- search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- mode
vim.opt.showmode = true

-- mouse
vim.opt.mouse = "nv"

-- pop up menu
vim.opt.pumheight = 10

-- tab key
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- split window
vim.opt.splitbelow = true
vim.opt.splitright = true

-- display
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.showtabline = 2
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- time out
vim.opt.timeoutlen = 500
vim.opt.updatetime = 300

-- others
vim.opt.wrap = false
vim.opt.whichwrap:append "<,>,[,],h,l"
vim.opt.shortmess:append 'c'
vim.opt.iskeyword:append '-'
