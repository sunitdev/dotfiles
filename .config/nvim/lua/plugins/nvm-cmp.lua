local cmp = require('cmp')

cmp.setup({
  -- custom keybindings
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-.>'] = cmp.mapping.complete(),
  })
})
