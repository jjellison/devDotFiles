local plugins = {
  {
      'tzachar/local-highlight.nvim',
      config = function()
        require('local-highlight').setup()
      end,
      event = "VeryLazy"
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
  },
  {
    -- Markdown preview, can be used by doing ":MarkdownPreview"
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
  },
  {
	   -- Cmp 
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",

	   -- Snippets
     "L3MON4D3/LuaSnip",
     "rafamadriz/friendly-snippets",
    event = "VeryLazy",
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
  {
    "stevearc/overseer.nvim",
    event = "VeryLazy",
    config = function()
      require("overseer").setup()
    end
  },
  {
    "nvim-lua/plenary.nvim"
  },
  {
    "Civitasv/cmake-tools.nvim",
    requires = {"nvim-lua/plenary.nvim", "stevearc/overseer.nvim"},
    event = "VeryLazy",
    config = function()
      require("cmake-tools").setup(require("custom.configs.cmake-tools"))
      require("nvim-tree").setup {
        view = {
          preserve_window_proportions = true,
        },
      }
    end
  },
  require("custom.configs.cmake-tools-vscode-bar"),
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dap.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function ()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function ()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {}
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb", -- Debugging
        "cpplint",
        "rust-analyzer"
      },
    },
  },
}

return plugins
