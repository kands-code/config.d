local fn = vim.fn

-- packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen neovim..."
  vim.cmd [[ packadd packer.nvim ]]
end

-- auto reloads neovim
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- install plugins
return packer.startup(function (use)
  -- packer
  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim"
  -- agda
  use {
    "isti115/agda.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  }
  -- indent-blanckline
  use "lukas-reineke/indent-blankline.nvim"
  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  -- colorscheme
  use "folke/tokyonight.nvim"
  use "marko-cerovac/material.nvim"
  use {
    "nvim-lualine/lualine.nvim",
    requires = {
      {
        "kyazdani42/nvim-web-devicons",
        opt = true,
      }
    }
  }
  -- markdown
  use "godlygeek/tabular"
  use "preservim/vim-markdown"
  -- completion
  use "hrsh7th/nvim-cmp"
  use "onsails/lspkind.nvim"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  --- snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  --- lsp
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
