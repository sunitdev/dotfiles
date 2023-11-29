-- One dark color schema
require('onedark').setup  {
    -- Main options 
    style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- Code style 
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'italic,bold',
        functions = 'italic',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options 
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights 
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config 
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}

require('onedark').load()