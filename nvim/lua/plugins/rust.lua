return {
    'mrcjkb/rustaceanvim',

    version = '^5',
    lazy = false,




    init = function ()
        local bufnr = vim.api.nvim_get_current_buf()
        vim.keymap.set(
          "n",
          "<leader>a",
          function()
            vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
            -- or vim.lsp.buf.codeAction() if you don't want grouping.
          end,
          { silent = true, buffer = bufnr }
        )

        vim.keymap.set(
            "n",
            "<leader>h",
            function ()
                vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
            end
        )
    end
}
