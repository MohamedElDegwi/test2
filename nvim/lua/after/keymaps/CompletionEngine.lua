local cmp = require("cmp")

-- Create mappings using cmp.mapping.preset.insert for insertion mode.
local mapping = cmp.mapping.preset.insert({
  ["<C-b>"] = cmp.mapping.scroll_docs(-4),       -- Scroll documentation up.
  ["<C-f>"] = cmp.mapping.scroll_docs(4),          -- Scroll documentation down.
  ["<C-Space>"] = cmp.mapping.complete(),          -- Trigger the completion menu.
  ["<C-e>"] = cmp.mapping.abort(),                 -- Abort the completion.
  ["<CR>"] = cmp.mapping.confirm({ select = true }),-- Confirm current selection.
})

return mapping
