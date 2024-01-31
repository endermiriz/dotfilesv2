---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<F6>"] = { "<cmd> CompilerOpen <CR>", "Open Compiler", opts = { noremap = true, silent = true } },
    ["<S-F6>"] = { "<cmd> CompilerStop <CR>", "Stop Compiler", opts = { noremap = true, silent = true } },
    ["<S-F7>"] = {
      "<cmd> CompilerToggleResults <CR>",
      "Toggle Compiler Results",
      opts = { noremap = true, silent = true },
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
