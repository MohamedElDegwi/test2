return {
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('after.config.init_TreeSitter')
    end,
  },
}
