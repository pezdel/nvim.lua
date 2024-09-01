local global = vim.g
local o = vim.opt

-- Editor options

o.number = true             -- Print the line number in front of each line
o.relativenumber = true     -- Show the line number relative to the line with the cursor in front of each line.
o.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
o.syntax = "on"             -- When this option is set, the syntax with this name is loaded.
o.autoindent = true         -- Copy indent from current line when starting a new line.
o.cursorline = true         -- Highlight the screen line of the cursor with CursorLine.
o.expandtab = true          -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
o.encoding = "UTF-8"        -- Sets the character encoding used inside Vim.
o.ruler = true              -- Show the line and column number of the cursor position, separated by a comma.
o.mouse = "a"               -- Enable the use of the mouse. "a" you can use on all modes
o.title = true              -- When on, the title of the window will be set to the value of 'titlestring'
o.hidden = true             -- When on a buffer becomes hidden when it is |abandon|ed
o.ttimeoutlen = 0           -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
o.wildmenu = true           -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.showcmd = true            -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
o.showmatch = true          -- When a bracket is inserted, briefly jump to the matching one.
o.splitright = true
o.splitbelow = true         -- When on, splitting a window will put the new window below the current one
o.termguicolors = true

o.nu = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smartindent = true
o.wrap = false
o.swapfile = false
o.backup = false
o.cmdheight = 1
o.hlsearch = true
o.ignorecase = true
o.pumheight = 10
o.showmode = false
o.showtabline = 0
o.scrolloff = 8
o.cursorline = true
o.undofile = true
o.updatetime = 300
o.writebackup = false
o.signcolumn = 'no'

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
