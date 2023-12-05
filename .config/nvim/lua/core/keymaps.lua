local keymap = require('utils').keymap

-- Leader key
vim.g.mapleader = ' '

-- Move around splits using Ctrl + {h,j,k,l}
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')

-- Move highlighted text
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")

-- When scrolling keep cursor in middle
keymap('n', '<C-d>', '<C-d>zz')
keymap('n', '<C-u>', '<C-u>zz')

-- During search keep current selection in middle
keymap('n', 'n', 'nzzzv')
keymap('n', 'N', 'Nzzzv')

-- Copy to system clipboard
keymap('n', '<leader>y', '"+y')
keymap('v', '<leader>y', '"+y')
