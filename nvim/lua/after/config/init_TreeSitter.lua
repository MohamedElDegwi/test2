require('nvim-treesitter.configs').setup {
  -- Specify the parsers to install (only Rust and Lua for now)
  ensure_installed = { "rust", "lua", "toml" },  -- Install parsers for Rust and Lua
  
  -- Automatically install parsers as needed
  sync_install = false,  -- Install parsers asynchronously for faster setup
  
  highlight = {
    enable = true,  -- Enable Tree-sitter highlighting
    additional_vim_regex_highlighting = false,  -- Disable Vim's default regex-based highlighting
  },

  -- Basic code folding based on Tree-sitter constructs
  fold = {
    enable = true,  -- Enable Tree-sitter-based folding
    disable = {},  -- Keep folding enabled for all languages
  },
}
