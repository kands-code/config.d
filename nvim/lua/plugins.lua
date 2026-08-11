-- 使用 mini.pick 作为文件筛选
-- PRE: fd | ripgrep
vim.pack.add({
  "https://github.com/nvim-mini/mini.extra",
  "https://github.com/nvim-mini/mini.pick",
  "https://github.com/nvim-mini/mini.completion",
  "https://github.com/nvim-mini/mini.snippets",
  "https://github.com/rafamadriz/friendly-snippets",
})
require("mini.pick").setup()
require("mini.extra").setup()

-- 配置 mini.pick 快捷键
local MiniPick = require("mini.pick")
vim.keymap.set("n", "<leader>ff", MiniPick.builtin.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", MiniPick.builtin.grep_live, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", MiniPick.builtin.buffers, { desc = "Pick buffer" })

-- 使用 mini.notify 作为弹窗提示
vim.pack.add({ "https://github.com/nvim-mini/mini.notify" })
require("mini.notify").setup()

-- 使用 mini.completion 来作为补全
local MiniSnippets = require("mini.snippets")
local GenLoader = MiniSnippets.gen_loader
MiniSnippets.setup({
  snippets = {
    GenLoader.from_lang(),
  },
})
MiniSnippets.start_lsp_server()

-- 配置 mini.completion
local MiniCompletion = require("mini.completion")
MiniCompletion.setup({
  lsp_completion = {
    auto_setup = true,
    process_items = function(items, base)
      return MiniCompletion.default_process_items(items, base, { filtersort = "fuzzy" })
    end,
  },
})

-- 配置 LSP 能力
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, MiniCompletion.get_lsp_capabilities())
vim.lsp.config("*", { capabilities = capabilities })

-- 配置 mini.clue
vim.pack.add({ 'https://github.com/nvim-mini/mini.clue' })
local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    { mode = { 'n', 'x' }, keys = '<leader>' },
    { mode = 'n',          keys = '[' },
    { mode = 'n',          keys = ']' },
    { mode = 'i',          keys = '<C-x>' },
    { mode = { 'n', 'x' }, keys = 'g' },
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },
    { mode = 'n',          keys = '<C-w>' },
    { mode = { 'n', 'x' }, keys = 'z' },
  },
  clues = {
    miniclue.gen_clues.square_brackets(),
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
    { mode = "n", keys = "<Leader>b", desc = "+Buffer" },
    { mode = "n", keys = "<Leader>f", desc = "+Find" },
  },
  window = { delay = 256 },
})
