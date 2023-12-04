local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr }

  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps(opts)

  -- custom keybindings
  vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.keymap.set('n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})

