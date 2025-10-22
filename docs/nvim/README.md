# NeoVim Notes

## ColorSchemes
1. The color scheme in `nvim/lua/config/lazy.lua` is specifically used for the install screen (type `:Lazy` to access). If you want to change the editor colorscheme, you need to edit `nvim/lua/plugins/colorscheme.lua`
1. [Catppucin's docs](https://github.com/catppuccin/nvim) are a little irritating for understanding how to set something. It took me entirely too long to learn what the fuck you're actually supposed to do. It turns out, you need to run the vim command `colorscheme <>`, where `<>` is one of the following:
    - `catppuccin-latte`
    - `catppuccin-frappe`
    - `catppuccin-mocha`
    - `catppuccin-macchiato`

    This leaves you with something like this, if you are running this from Lazy:
    ```Lua
        return {
            "catppuccin/nvim",
            name = "catppuccin",
            priority = 1000,
            init = function()
                vim.cmd([[colorscheme catppuccin-frappe]])
            end,
        }
    ```

    You could also just type in the cmd bar `:colorscheme <>`, where `<>` is one of the above defined values. 
    Why Catppuccin/nvim couldn't explain it that way is BEYOND my comprehension.

## Markdown Viewer
When I first installed this, the `build = function() vim.fn["mkdp#util#isntall"]()` gave some error about how it was an unknown vim function. I came across a [github issue](https://github.com/iamcco/markdown-preview.nvim/issues/7) that told me to just run `:call mkdp#util#install()` from the neovim cli, and that worked.
1. I have updated that `build - function()` in `nvim/lua/plugins/markdown-preview.lua` but I'm not sure how to get it to call that. I was doing `:Lazy` and trying to manually uninstall/rerun the build cmd, but I couldn't get it to work. I am leaving as is for now because I really don't want to waste my time on this.

## Intellisense, Autocomplete, clangd (lsp stuffs)
This is probably going to expand as I add more things to this, so I'm going to preemptively break this up into chunks for future use.
- [Rust](lsp/Rust.md)

