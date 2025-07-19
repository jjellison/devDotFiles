return {
    'numToStr/FTerm.nvim',
    opts= {
        blend = 30,
    },

    init = function()
        local fterm = require('FTerm')
        local gitui = fterm:new({
            ft = 'fterm_gitui', -- You can also override the default filetype, if you want
            cmd = "gitui",
            dimensions = {
                height = 0.9,
                width = 0.9
            }
        })

        -- Use this to toggle gitui in a floating terminal
        vim.keymap.set('n', '<C-g>', function() gitui:toggle() end)
        vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
    end
}
