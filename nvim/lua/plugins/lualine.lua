return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		options = {
            component_separators = '',
            section_separators = '',
			disabled_filetypes = {
				statusline = {
					'neo-tree',
					'DiffviewFiles'
				}
			},
            theme = "tomorrow_night",
        },
        sections = {
            lualine_a = {
                {
                    'filename',
                    path = 1,
                    file_status=true,
                    symbols = {
                        readonly = '[readonly]',      -- Text to show when the file is non-modifiable or readonly.
                    }
                },
                {
                    'buffers',
                    show_filename_only = true,
                    mode = 2,
                }
            }
        }
	},
	init = function()
		vim.opt.showmode = false
		vim.opt.laststatus = 3
	end
}
