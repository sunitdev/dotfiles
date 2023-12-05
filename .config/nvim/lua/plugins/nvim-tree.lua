local keymap = require('utils').keymap

-- Keymap
keymap("n", "<leader>pv", ':NvimTreeToggle<CR>')

-- Config
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    adaptive_size = true
  },
  renderer = {
    group_empty = true,
    indent_width = 2,
    icons = {
      show = {
        folder_arrow = false,
      }
    }
  },
  filters = {
    dotfiles = false, -- show dot files
    custom = { "^.git$" } -- hide .git folder
  },
  update_focused_file = {
    enable = true, -- keep open file in focus
    update_cwd = false,
  },
})
