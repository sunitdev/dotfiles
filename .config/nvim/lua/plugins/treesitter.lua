require'nvim-treesitter.configs'.setup {
  ensure_installed = {'bash', 'css', 'html', 'javascript', 'json', 'lua', 'python', 'typescript', 'vim', 'yaml' },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
  },
}
