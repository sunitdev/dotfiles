require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
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
})
