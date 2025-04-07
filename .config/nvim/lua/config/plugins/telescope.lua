return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		-- keymaps
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set("n", "<Leader>fw", builtin.current_buffer_fuzzy_find, { desc = 'Telescope find in buf' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set("n", "<Leader>fo", builtin.oldfiles, { desc = 'Telescope find oldfiles' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

		-- options
		local telescope = require('telescope')
		telescope.setup {
			pickers = {
				live_grep = {
					file_ignore_patterns = { 'node_modules', '.git', '.venv' },
					additional_args = function(_)
						return { "--hidden" }
					end
				},
				find_files = {
					file_ignore_patterns = { 'node_modules', '.git', '.venv' },
					hidden = true
				}
			}
		}
	end,
}
