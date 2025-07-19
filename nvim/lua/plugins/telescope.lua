return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = {
        'nvim-lua/plenary.nvim',
        'sharkdp/fd'
    },
	keys = function() 
		local builtin = require('telescope.builtin')
        local themes = require('telescope.themes')
        --vim.key
		return {
			{'<leader>ff', builtin.find_files},
			{'<leader>fg', builtin.live_grep},
			{'<leader>fs', builtin.grep_string},
			{'<leader>fc', builtin.current_buffer_fuzzy_find},

            -- LSP Specific functionality
            {'<leader>fr', builtin.lsp_references},
            {'<leader>fd', builtin.lsp_definitions},
            {'<leader>fi', builtin.lsp_implementations},
            {'<leader>ft', builtin.lsp_type_definitions},

            -- Git Specific Functionality
            {'<leader>gc', builtin.git_commits},
            {'<leader>gs', builtin.git_status},
            {'<leader>gt', builtin.git_bcommits},
            {'<leader>gy', builtin.git_bcommits_range},
            {'<leader>gb', builtin.git_branches},

		}
	end,
    opts = {
        pickers = {
            git_commits = {
                theme = "dropdown",
                -- Maybe try layout strategy??
                --width = 1000,
                --height = 2000,
            }
        },
    },
}
