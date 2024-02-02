local builtin = require("telescope.builtin")
local telescope = require("telescope")

local keymap = require("utils").keymap

-- Keybinds

-- Search for project files
keymap("n", "<leader>pf", builtin.find_files)
-- Search for git project files
keymap("n", "<C-p>", builtin.git_files)
-- Search for string in project
keymap("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- Search for help tags
keymap("n", "<leader>vh", builtin.help_tags)

--lsp
keymap("n", "gr", "<cmd>Telescope lsp_references<CR>")

-- Extensions

-- undo
telescope.load_extension("undo")

keymap("n", "<leader>u", "<cmd>Telescope undo<cr>")
