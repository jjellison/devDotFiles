# Rust LSP Configuration
**Note:** If you want to understand more generic LSP stuff, please read the [LSP README](README.md)

1. You can view Neovim's specific lsp stuff from [lspconfig's github](https://github.com/neovim/nvim-lspconfig#rust_analyzer). They do a decend job explaining how the framework works. You can also look at their [rust specific config](https://github.com/neovim/nvim-lspconfig/blob/master/lsp/rust_analyzer.lua).

1. They also give an okay explanation for how to install and get it going, but I find it is still not usable to the common person such as myself.
    - Update: Once again, the documentation paints it as sunshine and rainbows for getting their SHIT to work, but boy howdy does it NOT fucking work.
    - The whole _"just do `vim.lsp.config('rust_analyzer')` and world hunger will be cured!"_ is a load of shit. That did NOT work, and I have no idea how to get it to work. I ended up just hacking a shitty solution where I hardcode my config into `nvim/config/lazy.lua` which is not ideal
    - Rust Analyzer (or `rust_analyzer` or `rust-analyzer`) also has a shitty way to configure it:
    ```lua
        vim.lsp.config('rust_analyzer', {
            settings = {
                ['rust-analyzer'] = {
                    someSubGroup= {
                        someSubGroupSetting = {
                            enable = true
                        }
                    },
                    -- otherSubGroups....
                }
            }
        }
    ```
    like wtf???? Who designed this? They need to be hit. If you want to know the names for those `otherSubGroupSettings` you can go to [rust_analyzer's docs](https://rust-analyzer.github.io/book/configuration.html) where they show you the name of the setting, but a very mediocre job at explaining what the setting is, and provide no example of what it will do/look like.
