require("lualine").setup({
  options = {
    theme = "tokyonight",
    icons_enabled = true,
    globalstatus = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = " ", right = " " },
  },
  sections = {
    lualine_a = {
      { "mode", padding = { left = 3, right = 3 } },
    },
    lualine_b = {
      { "branch", padding = { left = 3, right = 3 } },
      { "diff", padding = { left = 3, right = 3 } },
      { "diagnostics", padding = { left = 3, right = 3 } },
    },
    lualine_c = {
      { "filename", path = 1, padding = { left = 3, right = 3 } },
    },
    lualine_x = {
      { "encoding", padding = { left = 3, right = 3 } },
      { function() return vim.bo.fileformat end, padding = { left = 3, right = 3 } },
      { "filetype", padding = { left = 3, right = 3 } },
    },
    lualine_y = {
      { "progress", padding = { left = 3, right = 3 } },
    },
    lualine_z = {
      { "location", padding = { left = 3, right = 3 } },
    },
  },
})

