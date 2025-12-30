local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key is assumed to be set in core/keymaps.lua already
-- Keymaps for telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)    -- Find files
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)     -- Live grep search
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)       -- Search buffers
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)     -- Search help tags
map('n', '<leader>fm', '<cmd>Telescope marks<cr>', opts)         -- Search marks
map('n', '<leader>fr', '<cmd>Telescope resume<cr>', opts)        -- Resume previous Telescope search
