return {
    'numToStr/FTerm.nvim',
    opts= {
        blend = 30,
    },
    vim.keymap.set('n', '<C-b>', '<CMD>lua require("FTerm").toggle()<CR>')
	--jkeys = function() 
--		local builtin = require('vim-floaterm')

		--return {
			--{'<leader>ff', builtin.find_files},
			--{'<leader>fg', builtin.live_grep},
			--{'<leader>fs', builtin.grep_string},
			--{'<leader>fc', builtin.current_buffer_fuzzy_find}
		--}
	--end
}
