-- set the leader to space
vim.g.mapleader = " "

local keymap = vim.keymap     -- for conciseness

-- save with cntrl + s
keymap.set("n", "<C-s>", ":w<CR>")

-- tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

--buffers
-- ***commenting out to try using ctrl+i and ctrl+o instead
-- keymap.set("n", "<tab>", ":bnext<CR>")
-- keymap.set("n", "<S-tab>", ":bprev<CR>")

-- quit
keymap.set("n", "<leader>q", ":qa!<CR>")

vim.keymap.set("n", "<leader>fb", vim.lsp.buf.format, { remap = false })

vim.keymap.set("n", "<leader>ts", ":Telescope colorscheme<CR>")
