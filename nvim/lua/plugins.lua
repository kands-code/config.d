-- 使用 fff.nvim 作为 picker
vim.pack.add({ 'https://github.com/dmtrKovalenko/fff.nvim' })
-- 需要下载或编译依赖
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'fff.nvim' and (kind == 'install' or kind == 'update') then
      if not ev.data.active then vim.cmd.packadd('fff.nvim') end
      require('fff.download').download_or_build_binary()
    end
  end,
})
local FFF = require('fff')
FFF.setup({ prompt = '% ' })
-- 设置相应快捷键
vim.keymap.set('n', '<leader>ff', function() FFF.find_files() end, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', function() FFF.live_grep() end, { desc = 'Live grep' })

-- 使用 mini.notify 作为弹窗提示
vim.pack.add({ 'https://github.com/nvim-mini/mini.notify' })
require('mini.notify').setup()

-- 使用 mini.completion 来作为补全
vim.pack.add({ 'https://github.com/nvim-mini/mini.completion' })
-- 配置 mini.completion
local MiniCompletion = require('mini.completion')
MiniCompletion.setup({
  lsp_completion = {
    auto_setup = true,
  },
  window = {
    info = {
      height = 16,
      width = 48,
    },
    signature = {
      height = 16,
      width = 48,
    },
  },
})

