-- Found this solution for custom overrides https://github.com/delatorrejuanchi/dotfiles/blob/f1b1561b1d57598603b501bd3f83749d5bd32be1/.config/nvim/lua/config/keymaps.lua#L19
local telescope_ignore_patterns = {
    "build/.*"
}

-- Found this solution https://github.com/nvim-telescope/telescope.nvim/issues/2874#issuecomment-1900967890
-- Allows toggling hidden files while in a picker window
local my_find_files
my_find_files = function(opts, no_ignore)
  opts = opts or {}
  no_ignore = vim.F.if_nil(no_ignore, false)
  opts.attach_mappings = function(_, map)
    map({ "n", "i" }, "<C-h>", function(prompt_bufnr) -- <C-h> to toggle modes
      local prompt = require("telescope.actions.state").get_current_line()
      require("telescope.actions").close(prompt_bufnr)
      no_ignore = not no_ignore
      require("telescope.config").set_defaults({
        file_ignore_patterns = no_ignore and telescope_ignore_patterns or {},
      })
      my_find_files({ default_text = prompt }, no_ignore)
    end)
    return true
  end

  if no_ignore then
    opts.no_ignore = true
    opts.hidden = true
    opts.prompt_title = "Find Files <ALL>"
    require("telescope.builtin").find_files(opts)
  else
    opts.prompt_title = "Find Files"
    require("telescope.builtin").find_files(opts)
  end
end


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
			{'<leader>ff', my_find_files},
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
