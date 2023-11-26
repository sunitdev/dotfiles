local opt = vim.opt

-- UI
opt.number = true			        -- Show line number
opt.relativenumber = true		    -- Show Relative Line numbers
opt.showmatch = true			    -- Highlight matching parenthesis
opt.ignorecase = true       		-- Ignore case letters when search
opt.smartcase = true        		-- Ignore lowercase for the whole pattern
opt.linebreak = true        		-- Wrap on word boundary

-- Tabs, indent
opt.expandtab = true        		-- Use spaces instead of tabs
opt.shiftwidth = 4          		-- Shift 4 spaces when tab
opt.tabstop = 4             		-- 1 tab == 4 spaces
opt.smartindent = true      		-- Autoindent new lines
