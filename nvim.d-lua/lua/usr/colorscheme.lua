require("indent_blankline").setup {
  show_current_context = true,
  show_current_context_start = true,
}

-- vim.o.background = "light"
-- vim.g.tokyonight_style = "day"
-- vim.cmd [[ colorscheme tokyonight ]]
vim.g.material_style = "lighter"
vim.cmd [[ colorscheme material ]]

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "material"
  }
})
