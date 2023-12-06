-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- lazy setup with plugins
lazy.setup({
    spec = {
        -- Colorscheme:
        {
          'olimorris/onedarkpro.nvim',
          lazy = false, -- load this at startup
          priority = 1000, -- high priority
        },

        -- Fuzzy finder - telescope
        {
          'nvim-telescope/telescope.nvim',
          tag = '0.1.5', 
          dependencies = { 
            'nvim-lua/plenary.nvim',
            'debugloop/telescope-undo.nvim', --undo extension
          }
        },

        --Treesitter - Syntax highlighting and format
        { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

        -- Icons
        { 'nvim-tree/nvim-web-devicons', lazy = true },

        -- nvim.tree - File Explorer
        {
          'nvim-tree/nvim-tree.lua',
          dependencies = { 'nvim-tree/nvim-web-devicons' },
        },

        -- Git labels
        {
          'lewis6991/gitsigns.nvim',
          lazy = true,
          dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
          },
        },

        -- Zero LSP - https://github.com/VonHeikemen/lsp-zero.nvim
        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
        -- mason to manage and auto download lsp servers
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Status line
        { 'nvim-lualine/lualine.nvim' },

        -- Auto save file
        { 'Pocco81/auto-save.nvim' },

        -- Surrond
        { 'kylechui/nvim-surround' },

        -- Ident blank line
        { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    }
})
