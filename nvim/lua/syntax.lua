-- 使用 conform.nvim 管理格式化
vim.pack.add({ 'https://github.com/stevearc/conform.nvim' })
-- 为各个语言设置对应格式化工具
-- formatter 列表请参考 https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters
require('conform').setup({
  formatters_by_ft = {
    c = { 'clang-format', lsp_format = 'fallback' },
    cpp = { 'clang-format', lsp_format = 'fallback' },
    python = { 'ruff_format' }, -- 使用 ruff format 命令
    rust = { 'rustfmt', lsp_format = 'fallback' },
    sh = { 'shfmt' },
    typst = { 'typstyle', lsp_format = 'fallback' },
    ['_'] = { 'trim_whitespace' },
  },
  format_on_save = {
    async = false,
    lsp_format = 'fallback',
    timeout_ms = 648,
  },
})

-- 设置 treesitter
-- PRE: tree-sitter-cli
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'nvim-treesitter' and (kind == 'install' or kind == 'update') then
      if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
      vim.cmd('TSUpdate')
    end
  end,
})
local TreeSitter = require('nvim-treesitter')
TreeSitter.setup({
  install_dir = vim.fs.joinpath(vim.fn.stdpath('data'), 'site')
})
-- 要支持的语言列表
TreeSitter.install({ 'c', 'cpp', 'python', 'rust', 'typst', 'bash', 'zsh' })

