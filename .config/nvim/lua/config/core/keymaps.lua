---@diagnostic disable: undefined-global
-- setup leader
vim.g.mapleader = " "

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fw", builtin.current_buffer_fuzzy_find)
vim.keymap.set("n", "<leader>fo", builtin.oldfiles)
vim.keymap.set("n", "<leader>fb", builtin.buffers)


vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local buf = args.buf

        vim.keymap.set("n", "<leader>bf", function() vim.lsp.buf.format() end, { buffer = buf })
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { buffer = buf })
    end,
})
