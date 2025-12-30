-- lsp/init.lua
local M = {}

function M.setup()
  -- Load general LSP configuration
  require("lsp.config.general")
  
  -- Load specific language servers
  require("lsp.config.rust")
  
  -- Load LSP-specific keymaps
  require("lsp.keymaps")
end

return M
