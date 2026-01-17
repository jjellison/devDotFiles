return {
	{ 'williamboman/mason.nvim', opts = {} },
	{ 'hrsh7th/cmp-nvim-lsp', opts = {}},
	{ 'hrsh7th/cmp-nvim-lsp-signature-help'},
	{ 'L3MON4D3/LuaSnip', opts = {}},
	{ 'folke/neodev.nvim', opts = {} },
	{ 'j-hui/fidget.nvim', opts = {} },
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = { 'williamboman/mason.nvim', 'folke/neodev.nvim' },
		opts = function()
			return {
				ensure_installed = { 'clangd', 'lua_ls', 'rust_analyzer'},
				handlers = {
					require('lsp-zero').default_setup,
					clangd = function()
						require('lspconfig')['clangd'].setup({
							cmd = {
                                vim.fn.expand('$MASON/bin/clangd'),
                                '--function-arg-placeholders=false',
                                '--offset-encoding=utf-16',
                            }
						})
					end
				}
			}
		end
	},
    {
        'https://gitlab.com/schrieveslaach/sonarlint.nvim',
        dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig', 'williamboman/mason-lspconfig.nvim' },
        opts = function()
            return {
                server = {
                    cmd = {
                        'sonarlint-language-server',
                        '-stdio',
                        '-analyzers',
                        vim.fn.expand('$MASON/share/sonarlint-analyzers/sonarcfamily.jar'),
                    },
                    --settings = {
                    --    sonarlint = {
                     --       pathToCompileCommands = './compile_commands.json'
                      --  }
                    --}
                },
                filetypes = {
                    'cpp'
                }
            }
        end
    },
	{
		'hrsh7th/nvim-cmp',
		dependencies = { 'VonHeikemen/lsp-zero.nvim', 'L3MON4D3/LuaSnip' },
		opts = function()
			local cmp = require('cmp')
			local kind_icons = {
				Text = "",
				Method = "󰆧",
				Function = "󰊕",
				Constructor = "",
				Field = "󰇽",
				Variable = "󰂡",
				Class = "󰠱",
				Interface = "",
				Module = "",
				Property = "󰜢",
				Unit = "",
				Value = "󰎠",
				Enum = "",
				Keyword = "󰌋",
				Snippet = "",
				Color = "󰏘",
				File = "󰈙",
				Reference = "",
				Folder = "󰉋",
				EnumMember = "",
				Constant = "󰏿",
				Struct = "",
				Event = "",
				Operator = "󰆕",
				TypeParameter = "󰅲",
			}

			return {
				completion = { completeopt = 'menu,menuone,noinsert' },
				mapping = {
					['<tab>'] = cmp.mapping.confirm(),
				},
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end
				},
				sources = {
					{ name = 'path' },
					{ name = 'nvim_lsp' },
					{ name = 'nvim_lsp_signature_help' },
				},
				window = {
					completion = {
						col_offset = -3,
						side_padding = 0
					}
				},
				formatting = {
					fields = { 'kind', 'abbr', 'menu' },
					format = function(entry, vim_item)
						vim_item.kind = " " .. kind_icons[vim_item.kind] .. " "
						vim_item.menu = ({
							buffer = "[Buffer]",
							nvim_lsp = "[LSP]",
							luasnip = "[LuaSnip]",
							nvim_lua = "[Lua]",
							latex_symbols = "[LaTeX]",
						})[entry.source.name]
						return vim_item
					end
				},
                experimental = {
                    ghost_text = true
                }
			}
		end
	}
}
