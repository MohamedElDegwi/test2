require("tokyonight").setup({
  style = "night", -- options: 'storm', 'moon', 'night', 'day'
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
  sidebars = { "qf", "help", "terminal", "packer" },
  dim_inactive = false,
  lualine_bold = true,
})

vim.cmd.colorscheme("tokyonight-storm")
