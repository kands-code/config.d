-- 设置诊断信息展示
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  severity_sort = true,
  float = { border = "single", source = true },
})

-- 通过快捷键打开诊断悬浮窗
vim.keymap.set("n", "D", function()
  vim.diagnostic.open_float()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostic window" })

-- 使用 nvim-lspconfig 中的预先配置
vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

-- 设置 bash-language-server 作为 Bash 的 LSP
-- PRE: bash-language-server | shfmt
vim.lsp.enable("bashls")

-- 设置 clangd 作为 C/C++ 的 LSP
-- PRE: clangd | clang-format
vim.lsp.enable("clangd")

-- 设置 vscode-html-language-server 作为 HTML 的 LSP
-- PRE: vscode-langservers-extracted/vscode-html-language-server | prettier
vim.lsp.enable("html")

-- 设置 vscode-css-language-server 作为 CSS 的 LSP
-- PRE: vscode-langservers-extracted/vscode-css-language-server | prettier
vim.lsp.enable("cssls")

-- 设置 vscode-eslint-language-server 作为 ESLint LSP
-- PRE: vscode-langservers-extracted/vscode-eslint-language-server
vim.lsp.enable("eslint")

-- 设置 vscode-json-language-server 作为 JSON 的 LSP
-- PRE: vscode-langservers-extracted/vscode-json-language-server | prettier
vim.lsp.enable("jsonls")

-- 设置 deno 作为 JS/TS 的 LSP
-- PRE: deno
vim.lsp.config("denols", {
  -- 取消 root_dir 限制
  root_dir = function(bufnr, on_dir)
    on_dir(vim.fs.root(bufnr, { "deno.json", "deno.jsonc", ".git" }) or vim.fn.getcwd())
  end,
})
vim.lsp.enable("denols")

-- 设置 ty 作为 Python LSP
-- PRE: ty | ruff
vim.lsp.enable("ty")

-- 设置 LuaLS 作为 Lua 的 LSP
-- PRE: lua-language-server | StyLua
-- 启用 lazydev 来配置 LuaLS
vim.pack.add({ "https://github.com/folke/lazydev.nvim" })
require("lazydev").setup()
vim.lsp.enable("lua_ls")

-- 设置 rust-analyzer 作为 Rust 的 LSP
-- PRE: rust-analyzer | rustfmt
vim.lsp.enable("rust_analyzer")

-- 设置 taplo-cli 作为 TOML 的 LSP
-- PRE: taplo
vim.lsp.config("taplo", {
  -- 允许非 git 项目
  root_dir = function(bufnr, on_dir)
    on_dir(vim.fs.root(bufnr, { ".taplo.toml", "taplo.toml", ".git" }) or vim.fn.getcwd())
  end,
})
vim.lsp.enable("taplo")

-- 设置 tinymist 作为 Typst 的 LSP
-- PRE: tinymist | typstyle
vim.lsp.config("tinymist", {
  settings = {
    -- 添加工作目录下的 fonts 目录作为本地字体目录
    fontPaths = { vim.fs.joinpath(vim.fn.getcwd(), "fonts") },
    formatterMode = "typstyle",
    lint = { enabled = true },
  },
})
vim.lsp.enable("tinymist")
