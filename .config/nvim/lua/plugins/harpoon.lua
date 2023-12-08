local harpoon = require('harpoon')

local keymap = require('utils').keymap

harpoon.setup({
  settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = true,

    -- enable tabline with harpoon marks
    tabline = false,
    tabline_prefix = "   ",
    tabline_suffix = "   ",
}
})

keymap('n', '<leader>ha', function() harpoon:list():append() end)
keymap('n', '<leader>hl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Map h1 to hN as shortcut for harpooned files
for i = 1, 5, 1 do
  keymap('n', '<leader>h' .. i , function() harpoon:list():select(i) end)
end

