return {
  -- Install telescope and its dependencies using lazy.nvim
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim' }, 
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require('after.config.init_FuzzyFinder') 
    end,
  },
}
