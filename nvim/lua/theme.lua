-- 使用 rose-pine 透明主题
vim.pack.add({
  {
    -- src = "https://github.com/catppuccin/nvim",
    -- name = "catppuccin",
    src = "https://github.com/Mofiqul/adwaita.nvim",
    name = "adwaita",
  },
})
-- require("catppuccin").setup({
--   flavour = "mocha",
--   transparent_background = true,
--   float = {
--     transparent = true,
--     solid = true,
--   },
--   term_colors = true,
-- })
vim.g.adwaita_dark = true
vim.g.adwaita_transparent = true
vim.cmd.colorscheme("adwaita")

-- 高亮当前行
vim.opt.cursorline = true

-- 使用 mini.indentscope 来展示缩进
vim.pack.add({ 'https://github.com/nvim-mini/mini.indentscope' })
local MiniIndentscope = require('mini.indentscope')
MiniIndentscope.gen_animation.none()
MiniIndentscope.setup({ draw = { delay = 80 } })

-- 使用 mini.icons 作为图标
vim.pack.add({ "https://github.com/nvim-mini/mini.icons" })
require("mini.icons").setup({ style = "ascii" })

-- 使用 mini.statusline 作为状态栏
vim.pack.add({ "https://github.com/nvim-mini/mini.statusline" })
require("mini.statusline").setup()
