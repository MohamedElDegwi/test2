-- Core settings and options 

local opt = vim.opt
local g = vim.g

-- Set leader key
g.mapleader = " "
g.maplocalleader = " "

-- Basic settings
opt.number = true             -- Show line numbers
opt.relativenumber = true     -- Show relative line numbers
opt.mouse = "a"               -- Enable mouse in all modes
opt.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim
opt.undofile = true           -- Save undo history
opt.ignorecase = true         -- Case-insensitive searching
opt.smartcase = true          -- But case-sensitive if search contains capitals
opt.signcolumn = "yes"        -- Always show the signcolumn
opt.updatetime = 250          -- Faster completion
opt.timeoutlen = 1000          -- Time to wait for a mapped sequence to complete
opt.completeopt = "menuone,noselect" -- Better completion experience
opt.termguicolors = true      -- True color support
opt.scrolloff = 8             -- Keep 8 lines above/below cursor when scrolling
opt.sidescrolloff = 8         -- Keep 8 columns left/right of cursor when scrolling
opt.splitbelow = true         -- Open splits below
opt.splitright = true         -- Open splits to the right
opt.cursorline = true         -- Highlight current line
opt.wrap = false              -- Disable line wrap


return {}
