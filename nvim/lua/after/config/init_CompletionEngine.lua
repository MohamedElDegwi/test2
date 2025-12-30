local cmp = require("cmp")
local lspkind = require("lspkind")
cmp.setup({
  snippet = {
  },
  mapping = require("after.keymaps.CompletionEngine"),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "path" },
  }, {
    { name = "buffer", keyword_length = 3 },
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      maxwidth = 50,
      ellipsis_char = "...",
      before = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          buffer = "[BUF]",
          path = "[PATH]",
        })[entry.source.name]
        return vim_item
      end
    })
  },
})
