local builtin = require('telescope.builtin')


-- Keybinds

-- Search for project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Search for git project files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Search for string in project
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- Search for help tags
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
