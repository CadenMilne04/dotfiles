-- set the leader to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- save with cntrl + s
keymap.set("n", "<C-s>", ":w<CR>")

-- tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

--buffers
keymap.set("n", "<tab>", ":bnext<CR>")
keymap.set("n", "<S-tab>", ":bprev<CR>")
keymap.set("n", "<leader>bc", ":bd<CR>")

-- quit
keymap.set("n", "<leader>q", ":qa!<CR>")

vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, { remap = false })

vim.keymap.set("n", "<leader>ts", ":Telescope colorscheme<CR>")
