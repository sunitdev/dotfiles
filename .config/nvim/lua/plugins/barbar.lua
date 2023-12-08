local keymap = require('utils').keymap

require('barbar').setup({
  -- Insert new buffer at end of list
  insert_at_end = true,
})

-- Move to previous/next
keymap('n', '<leader>bp', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<leader>bn', '<Cmd>BufferNext<CR>', opts)


-- Goto buffer in position...
for i = 1, 9, 1 do
  keymap('n', '<leader>b' .. i, '<Cmd>BufferGoto' .. i .. '<CR>', opts)
end

-- Close buffer
keymap('n', '<leader>bc', '<Cmd>BufferClose<CR>', opts)
-- Magic buffer-picking mode
keymap('n', '<leader>bs', '<Cmd>BufferPick<CR>', opts)
