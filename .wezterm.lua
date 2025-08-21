local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- UI
config.color_scheme = 'Astrodark'
config.font = wezterm.font 'JetBrainsMono Nerd Font Mono'
config.font_size = 15


return config
