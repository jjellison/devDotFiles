return {
	'nvim-telescope/telescope.nvim', tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = function() 
		local builtin = require('telescope.builtin')

		return {
			{'<leader>ff', builtin.find_files},
			{'<leader>fg', builtin.live_grep},
			{'<leader>fs', builtin.grep_string},
			{'<leader>fc', builtin.current_buffer_fuzzy_find}
		}
	end
}
