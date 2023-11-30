local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options

-- UI
opt.number = true			        -- Show line number
opt.relativenumber = true		    -- Show Relative Line numbers
opt.showmatch = true			    -- Highlight matching parenthesis
opt.ignorecase = true       		-- Ignore case letters when search
opt.smartcase = true        		-- Ignore lowercase for the whole pattern
opt.linebreak = true        		-- Wrap on word boundary

-- Tabs, indent
opt.expandtab = true        		-- Use spaces instead of tabs
opt.shiftwidth = 2          		-- Shift 2 spaces when tab
opt.tabstop = 2             		-- 1 tab == 2 spaces
opt.smartindent = true      		-- Autoindent new lines

-- Disable builtin plugins
local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
