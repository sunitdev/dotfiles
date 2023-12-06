local lsp_zero = require('lsp-zero')

local keymap = require('utils').keymap

lsp_zero.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr }

  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps(opts)

  -- custom keybindings
  keymap('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  keymap('n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  keymap('n', 'F', function ()
    vim.lsp.buf.format({async = false, timeout_ms = 10000})
  end)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})

