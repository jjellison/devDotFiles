return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup{}
    end,

    keys = {
        {"<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle the File Tree"},
        {"<leader>tc", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse the NvimTree folders recursively"},
        {"<leader>tr", "<cmd>NvimTreeRefresh<cr>", desc = "Refresh the tree"},
    }

}
