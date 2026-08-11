-- 使用 conform.nvim 管理格式化
vim.pack.add({ "https://github.com/stevearc/conform.nvim" })
-- 为各个语言设置对应格式化工具
-- formatter 列表请参考 https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters
require("conform").setup({
  formatters_by_ft = {
    c = { "clang-format", lsp_format = "fallback" },
    cpp = { "clang-format", lsp_format = "fallback" },
    python = { "ruff_format" }, -- 使用 ruff format 命令
    lua = { "stylua" },
    html = { "deno_fmt" },
    css = { "deno_fmt" },
    javascript = { "deno_fmt" },
    javascriptreact = { "deno_fmt" },
    json = { "deno_fmt" },
    jsonc = { "deno_fmt" },
    typescript = { "deno_fmt" },
    typescriptreact = { "deno_fmt" },
    markdown = { "deno_fmt" },
    yaml = { "deno_fmt" },
    rust = { "rustfmt", lsp_format = "fallback" },
    sh = { "shfmt" },
    zsh = { "shfmt" },
    toml = { "taplo" },
    typst = { "typstyle", lsp_format = "fallback" },
    ["_"] = { "trim_whitespace" },
  },
  format_on_save = {
    async = false,
    lsp_format = "fallback",
    timeout_ms = 648,
  },
})

-- 设置 treesitter
-- PRE: tree-sitter-cli
vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })
vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == "nvim-treesitter" and (kind == "install" or kind == "update") then
      if not ev.data.active then
        vim.cmd.packadd("nvim-treesitter")
      end
      vim.cmd("TSUpdate")
    end
  end,
})
local TreeSitter = require("nvim-treesitter")
TreeSitter.setup({
  install_dir = vim.fn.stdpath("data"),
})
-- 启用 treesitter
vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    pcall(vim.treesitter.start, ev.buf)
  end,
})

-- 为 Markdown 和 Typst 设置标线
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "typst" },
  callback = function() vim.opt_local.colorcolumn = "97,129" end,
})

-- 安装特定语言的 tree-sitter
-- 语言列表请参考: https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
TreeSitter.install({
  -- basic
  "c",
  "cpp",
  "rust",
  "python",
  "lua",
  -- web
  "css",
  "html",
  "typst",
  "javascript",
  "jsx",
  "typescript",
  "tsx",
  -- shell
  "bash",
  "zsh",
  -- config
  "json",
  "toml",
  "yaml",
  "xml",
  "csv",
})
