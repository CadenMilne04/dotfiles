return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-project.nvim' },
    config = function()
        local builtin = require('telescope.builtin')

        local telescope = require('telescope')
        telescope.setup {
            pickers = {
                find_files = {
                    hidden = true
                }
            }
        }

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set("n", "<Leader>fo", builtin.oldfiles, {})
        vim.keymap.set("n", "<Leader>fw", builtin.current_buffer_fuzzy_find, {})

        -- Projects related stuff
        local proj = require 'telescope'.load_extension('project')
        vim.keymap.set("n", "<C-p>", proj.project, { noremap = true, silent = true })
    end,
}
