-- lsp/plugins/init.lua
return {
  -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
      -- Mason setup
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = { 
          'rust_analyzer',
          -- Add other language servers you want to install
        },
        automatic_installation = true,
      })
      
      -- Now load the LSP configuration
      require('lsp').setup()
    end,
  }
}
