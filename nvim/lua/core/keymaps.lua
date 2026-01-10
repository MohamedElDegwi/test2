vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>wa", "<cmd>wa<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>qq", "<cmd>qa<cr>")
map("n", "<leader>ex", "<cmd>Ex<cr>")

map("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true }) end)

map("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true }) end)

map("n", "<leader>e", vim.diagnostic.open_float)

