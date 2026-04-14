-- persistent undo history
vim.cmd 'set undofile'

-- no more no name buffers
vim.cmd 'set nohidden'

-- line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true         -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
vim.opt.tabstop = 4       -- 4 spaces for tabs
vim.opt.shiftwidth = 4    -- 4 spaces for indent width
vim.opt.expandtab = true  -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
vim.opt.wrap = false -- disable line wrapping

-- cursor line
vim.opt.cursorline = true -- highlight the current cursor line

-- turn off swapfile
vim.opt.swapfile = false

-- systemclipboard
vim.opt.clipboard = 'unnamedplus'

-- line
vim.opt.colorcolumn = "99"

vim.opt.termguicolors = true

vim.cmd 'set completeopt=fuzzy,menuone,popup,noselect'


vim.opt.termguicolors = true

-- netrw file explorer settings
vim.g.netrw_liststyle = 3        -- Start in tree view
vim.g.netrw_banner = 0           -- Hide the top info banner
vim.g.netrw_winsize = 25         -- Window size when split

-- textfiles
vim.api.nvim_create_autocmd("FileType", {
  pattern = "text",
  callback = function()
    vim.opt_local.textwidth = 80
    vim.opt_local.formatoptions:append("t")
  end,
})
