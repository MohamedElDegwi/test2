-- lsp/config/rust.lua
local M = {}

function M.setup()
  local lspconfig = require('lspconfig')
  
  -- Configure rust-analyzer
  lspconfig.rust_analyzer.setup({

on_attach = function(client, bufnr)
    -- Disable formatting capability
    client.server_capabilities.documentFormattingProvider = false
  end,    

settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
        },
        inlayHints = {
          lifetimeElisionHints = {
            enable = true,
            useParameterNames = true,
          },
          typeHints = {
            enable = true,
            hideClosureInitialization = false,
            hideClosureReturnType = false,
          },
        },
        cargo = {
          allFeatures = true,
        },
        procMacro = {
          enable = true,
        },
      }
    }
  })
end

M.setup()
return M
