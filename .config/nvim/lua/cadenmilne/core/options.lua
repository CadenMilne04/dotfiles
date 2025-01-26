local opt = vim.opt -- for conciseness

-- startup colorscheme
-- vim.cmd.colorscheme "catppuccin-mocha"

--undofile
vim.cmd 'set undofile'

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true         -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4       -- 4 spaces for tabs
opt.shiftwidth = 4    -- 4 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark

-- turn off swapfile
opt.swapfile = false

-- systemclipboard
vim.opt.clipboard = 'unnamedplus'

-- line
opt.colorcolumn = "99"
