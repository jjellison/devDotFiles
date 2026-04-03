return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function(plugins, opts)
        local ts = require("nvim-treesitter")
        local parsers = { 
            "c", 
            "python",
            "cpp",
            "rust",
            "toml",
            "lua",
            "vim",
            "vimdoc",
            "query", 
            "markdown",
            "markdown_inline",
            "regex",
            "c_sharp",
            "comment",
            "latex",
            "typst",
            "yaml",
            "bash",
            "devicetree",
            "svelte",
            "typescript",
            "javascript",
            "html",
            "css",
        }

        ts.install(parsers)

        vim.api.nvim_create_autocmd("FileType", {
          callback = function(args)
            local buf = args.buf
            local ft = vim.bo[buf].filetype
            if ft == "" then return end

            -- If Neovim can map this filetype to a TS language, start highlighting.
            if not pcall(vim.treesitter.language.get_lang, ft) then return end
            if not pcall(vim.treesitter.start, buf, ft) then return end
            print("moving on")

            -- Enable folds
            vim.wo[buf].foldmethod = "expr"
            vim.wo[buf].foldexpr = "v:lua.vim.treesitter.foldexpr()"

            -- Enable indenting
            vim.bo[buf].indentexpr = "v:lua.vim.treesitter.indentexpr()"
          end,
        })
    end
}
