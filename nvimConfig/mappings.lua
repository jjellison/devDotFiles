
local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
  i = {
    ["jk"] = {
      "<ESC>",
      "Escape Insert mode",
    },
  }
}

M.mappings = {
  -- disabled = {
  --   n = {-- switch between windows
  --   ["<C-h>"] = { "<C-w>h", "Window left" },
  --   ["<C-l>"] = { "<C-w>l", "Window right" },
  --   ["<C-j>"] = { "<C-w>j", "Window down" },
  --   ["<C-k>"] = { "<C-w>k", "Window up" },
  --   },
  -- },


  n = {
    -- Window related actions
    ["<leader>sv"] = {
      "<C-w>v",
      "Split window vertically"
    },
    ["<leader>sh"] = {
      "<C-w>s",
      "Split window horizontally"
    },
    ["<leader>se"] = {
      "<C-w>=",
      "Make split windows equal width"
    },
    ["<leader>sx"] = {
      ":close<CR>",
      "Close current split window"
    },

    -- Tab Related Actions
  }
}

return M
