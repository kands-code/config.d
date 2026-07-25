-- 行号设置
vim.opt.number = true
vim.opt.relativenumber = true

-- tab 宽度
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
-- 自动缩进宽度
vim.opt.shiftwidth = 2
-- 使用空格替换 tab
vim.opt.expandtab = true
-- 使用智能缩进
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- 禁止折行
vim.opt.wrap = false

-- 分屏位置
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.laststatus = 3

-- 与系统共享剪贴板
vim.opt.clipboard:append('unnamedplus')
-- 允许文件名中包含 @
vim.opt.isfname:append('@-@')
-- 禁用缓存文件
vim.opt.swapfile = false
vim.opt.backup = false
-- 启用 undofile
vim.opt.undodir = vim.fs.joinpath(vim.fn.stdpath('data'), 'undodir')
vim.opt.undofile = true

-- 终端真彩色
vim.opt.termguicolors = true
-- 禁止 neovim 改变光标形状
vim.opt.guicursor = ''
-- 设置单次滚动行数
vim.opt.scrolloff = 8

-- 支持鼠标
vim.opt.mouse = 'a'
-- 基于文本的自动补全
vim.opt.autocomplete = true
-- 优化补全效果
vim.opt.completeopt = { 'fuzzy', 'menuone', 'noselect', 'nosort' }
-- 设置补全窗口
vim.opt.pumheight = 16
vim.opt.pumwidth = 16
vim.opt.pummaxwidth = 64

-- 设置在 Yank 的时候使用高亮提醒
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yank text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-- 使用默认色彩主题
vim.cmd.colorscheme('default')
-- 普通 Normal 文本背景完全透明
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- 浮动窗口背景透明
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
-- 行号部分背景透明
vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = 'none' })
-- 使用压缩的简短信息
vim.opt.shortmess:append("c")

