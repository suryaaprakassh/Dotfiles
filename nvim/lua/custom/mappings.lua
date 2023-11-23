---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<leader>p"] = { '"+p', "Paste System Clipboard" },
    ["<leader>y"] = { ' "+y ', "Copy System Clipboard" },
    ["<leader>d"] = { ' "_d ', "Delete" },
  },
  v = {
    ["<leader>y"] = { ' "+y ', "Copy System Clipboard" },
    ["<leader>d"] = { ' "_d ', "Delete" },
    ["J"]={":m '>+1<CR>gv=gv","Move lines Down"},
    ["K"]={":m '<-2<CR>gv=gv","Move lines Up"}
  },

  x={
    ["<leader>p"]={'[[" _dP]]'}
  }
}

return M


