-- leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 重启 neovim
vim.keymap.set("n", "<leader>re", "<Cmd>restart<CR>", { desc = "Restart neovim" })

-- 禁止粘贴替换时更新剪贴板
-- 其中 "_ 是指 黑洞寄存器
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste over selection without losing yanked text" })
-- 删除而不 Yank
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })
-- 使用 ESC 清除高亮
vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>", { desc = "Clear search highlighting", silent = true })

-- VISUAL 模式上下移动选中内容
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up in visual selection" })
-- 其中 Shift-V 是行可视模式
-- 行可视模式会默认选中整行
-- 而 Ctrl-V 是块可视模式
-- 可以选中多行单列内容进行操作
-- VISUAL 模式下修改缩进
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })

-- 连接行而不移动光标
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })
-- 全局替换当前光标下的单词
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "Replace word cursor is on globally",
})

-- 切换 buffer
vim.keymap.set("n", "<leader>bn", "<Cmd>bn<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<leader>bp", "<Cmd>bp<CR>", { desc = "Switch to previous buffer" })

-- 移动页面并且居中显示
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered" })
-- 搜索时居中结果
vim.keymap.set("n", "n", "nzz", { desc = "Next search result cursor centered" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous search result cursor centered" })

-- 打开 undotree
vim.keymap.set("n", "<leader>u", function()
  vim.cmd.packadd("nvim.undotree")
  require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })

-- 允许代码折叠
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 96
vim.opt.foldlevelstart = 80
vim.opt.foldenable = true
vim.keymap.set("n", "<leader>z", "za", { desc = "Toggle fold" })
