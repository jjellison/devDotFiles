local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)



vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.opt.tabstop=4
vim.opt.expandtab=true
vim.opt.shiftwidth=4
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.expandtab=true


vim.g.loaded_netrw = 1
vim.g.laoded_netrwPlugin = 1
vim.opt.termguicolors = true

-- LSP shit
vim.lsp.inlay_hint.enable(true)
vim.lsp.config('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {
            cachePriming = {
                enabled = true
            },
            inlayHints = {
                -- Hints at the end of .map/.iter/etc.
                closureReturnTypeHints = {
                    enable = "always"
                },
                -- Hints for the type coming into a closure
                parameterHints = {
                    enable = true
                }
            }
        }
    },
    root_markers = {{ "Cargo.toml" }},
})

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },

  -- Configure any other settings here. See the documentation for more details.
  -- Colorscheme that will be used when installing plugins.
  install = { colorscheme = { "catppuccin-frappe" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
