-- 设置诊断信息展示
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  severity_sort = true,
})

-- 设置 clangd 作为 C/C++ 的 LSP
-- PRE: clangd | clang-format
vim.lsp.config.clangd = {
  cmd = { 'clangd', '--background-index', '--clang-tidy' },
  root_markers = { 'compile_commands.json', '.git' },
  filetypes = { 'c', 'cpp' },
}
-- 启用 clangd
vim.lsp.enable('clangd')

-- 设置 ty 作为 Python LSP
-- PRE: ty | ruff
vim.lsp.config.ty = {
  cmd = { 'ty', 'server' },
  root_markers = { 'ty.toml', 'pyproject.toml', '.git' },
  filetypes = { 'python' },
}
-- 启用 ty
vim.lsp.enable('ty')

-- 设置 rust-analyzer 作为 Rust LSP
-- PRE: rust-analyzer | rustfmt
vim.lsp.config.rust_analyzer = {
  cmd = { 'rust-analyzer' },
  root_markers = { 'Cargo.toml', '.git' },
  filetypes = { 'rust' },
}
-- 启用 rust-analyzer
vim.lsp.enable('rust_analyzer')

-- 设置 tinymist 作为 Typst 的 LSP
-- PRE: tinymist | typstyle
vim.lsp.config.tinymist = {
  cmd = { 'tinymist', 'lsp' },
  settings = {
    -- 添加工作目录下的 fonts 目录作为本地字体目录
    fontPaths = { vim.fs.joinpath(vim.fn.getcwd(), 'fonts') },
    formatterMode = 'typstyle',
    formatterPrintWidth = 96,
    lint = { enable = true },
  },
  root_markers = { '.git' },
  filetypes = { 'typst' },
}
-- 启用 tinymist
vim.lsp.enable('tinymist')

