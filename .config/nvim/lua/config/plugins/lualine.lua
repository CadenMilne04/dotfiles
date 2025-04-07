return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		-- using defaults, removed encoding and format
		require('lualine').setup {
			sections = {
				lualine_x = {'filetype'},
			},
		}
	end,
}
