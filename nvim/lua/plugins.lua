-- 使用 fff.nvim 作为 picker
vim.pack.add({ "https://github.com/dmtrKovalenko/fff.nvim" })
-- 需要下载或编译依赖
vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == "fff.nvim" and (kind == "install" or kind == "update") then
      if not ev.data.active then
        vim.cmd.packadd("fff.nvim")
      end
      require("fff.download").download_or_build_binary()
    end
  end,
})
-- 启用并配置 fff.nvim
vim.schedule(function()
  local ok, FFF = pcall(require, "fff")
  if not ok then
    vim.notify("Load fff.nvim failed", vim.log.levels.WARN)
    return
  end
  FFF.setup({ prompt = "% ", prompt_vim_mode = true })
  vim.keymap.set("n", "<leader>ff", FFF.find_files, { desc = "Find files" })
  vim.keymap.set("n", "<leader>fg", FFF.live_grep, { desc = "Live grep" })
end)
vim.schedule(function()
  local ok, FFF = pcall(require, "fff")
  if ok then FFF.setup({ prompt = "% ", prompt_vim_mode = true }) end

  -- 设置相应快捷键
  vim.keymap.set("n", "<leader>ff", function()
    FFF.find_files()
  end, { desc = "Find files" })
  vim.keymap.set("n", "<leader>fg", function()
    FFF.live_grep()
  end, { desc = "Live grep" })
end)

-- 使用 mini.notify 作为弹窗提示
vim.pack.add({ "https://github.com/nvim-mini/mini.notify" })
require("mini.notify").setup()

-- 使用 mini.completion 来作为补全
vim.pack.add({
  "https://github.com/nvim-mini/mini.completion",
  "https://github.com/nvim-mini/mini.snippets",
  "https://github.com/rafamadriz/friendly-snippets",
})

-- 配置 mini.snippets
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
