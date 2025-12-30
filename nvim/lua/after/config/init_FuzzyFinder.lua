local telescope = require('telescope')
local actions = require('telescope.actions')

-- Telescope Setup
telescope.setup({
  defaults = {
    -- Default mappings
    mappings = {
      i = {
        ["<C-n>"] = actions.move_selection_next,
        ["<C-p>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
      },
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    path_display = {"truncate"},
  },
  pickers = {
    find_files = {
      theme = "dropdown",  -- Use dropdown theme for find_files
      hidden = true,       -- Include hidden files
    },
    live_grep = {
      theme = "dropdown",  -- Use dropdown theme for live_grep
      additional_args = function(opts)
        return { "--hidden" }  -- Include hidden files in live_grep search
      end,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- Enable fuzzy search
      override_generic_sorter = false, -- Use Telescope's default sorter
      override_file_sorter = false,    -- Use Telescope's file sorter
    },
  },
})

-- Load the FZF extension
telescope.load_extension('fzf')

-- Load keymaps for telescope from the keymaps config
require('after.keymaps.FuzzyFinder')  -- Loads the keymaps for telescope
