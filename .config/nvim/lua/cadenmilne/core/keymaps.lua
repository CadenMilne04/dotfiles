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

-- quit
keymap.set("n", "<leader>q", ":qa!<CR>")

-- <f>ormat <b>uffer
keymap.set("n", "<leader>fb", vim.lsp.buf.format, { remap = false })
-- <t>heme <s>witcher
keymap.set("n", "<leader>ts", ":Telescope colorscheme<CR>")
