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
EDIT: Turns out, Catppucin's docs are right (though still a little misleading). You still have to specify one of the 4 above strings, but the way the way they suggest to do this does in fact work. I think I was having so much grief becuase of tmux. So, you can ignore my angry ramblings.

## Markdown Viewer
When I first installed this, the `build = function() vim.fn["mkdp#util#install"]()` gave some error about how it was an unknown vim function. I came across a [github issue](https://github.com/iamcco/markdown-preview.nvim/issues/7) that told me to just run `:call mkdp#util#install()` from the neovim cli, and that worked.
1. I have updated that `build = ` in `nvim/lua/plugins/markdown-preview.lua`, turns out you actually need it to be `":call mkdp#util#install()"` with no quotes. Thanks docs.

## Intellisense, Autocomplete, clangd (lsp stuffs)
This is probably going to expand as I add more things to this, so I'm going to preemptively break this up into chunks for future use.
- [Rust](lsp/Rust.md)

