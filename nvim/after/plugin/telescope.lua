local status, telescope = pcall(require, "telescope")
if not status then return end

telescope.setup({
    defaults = {
        path_display = { "truncate" },
        layout_strategy = 'horizontal',
        layout_config = {
            preview_width = 0.55,
        },
    }
})

pcall(telescope.load_extension, 'fzf')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep (Text)' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' })

vim.keymap.set('n', '<leader>fc', function()
    builtin.find_files({ cwd = vim.fn.stdpath('config') })
end, { desc = 'Find Config Files' })
