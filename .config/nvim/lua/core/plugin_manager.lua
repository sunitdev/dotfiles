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
          'navarasu/onedark.nvim',
          lazy = false, -- load this at startup
          priority = 1000, -- high priority
        },

        -- Fuzzy finder - telescope
        {
          'nvim-telescope/telescope.nvim',
          tag = '0.1.5', 
          dependencies = { 
            'nvim-lua/plenary.nvim'
          }
        },

    }
})

