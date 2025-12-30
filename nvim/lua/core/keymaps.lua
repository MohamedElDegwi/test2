-- Core keymaps

-- Local reference
local keymap = vim.keymap.set

-- Helper function
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  keymap(mode, lhs, rhs, options)
end

-- Modes
--   n = normal_mode
--   i = insert_mode
--   v = visual_mode
--   x = visual_block_mode
--   t = term_mode
--   c = command_mode

-- Disable Space in normal and visual mode
map({ "n", "v" }, "<Space>", "<Nop>")

-- navigate file explorer
map("n", "<leader>ex", ":Ex<CR>", { desc = "Open file explorer" })

-- Open new window splits
map("n", "<leader>owj", ":belowright split<CR>", { desc = "Open window below (horizontal split)" })
map("n", "<leader>owk", ":aboveleft split<CR>", { desc = "Open window above (horizontal split)" })
map("n", "<leader>owh", ":aboveleft vsplit<CR>", { desc = "Open window left (vertical split)" })
map("n", "<leader>owl", ":belowright vsplit<CR>", { desc = "Open window right (vertical split)" })

-- Window navigation with <leader>w + direction
map({"n"}, "<leader>wh", "<C-w>h", { desc = "Move to left window" })
map({"n"}, "<leader>wj", "<C-w>j", { desc = "Move to window below" })
map({"n"}, "<leader>wk", "<C-w>k", { desc = "Move to window above" })
map({"n"}, "<leader>wl", "<C-w>l", { desc = "Move to right window" })

-- Quit bindings
map("n", "<leader>q", ":q<CR>", { desc = "Quit current window" })
map("n", "<leader>w", ":w<CR>", { desc = "Write current window" })
map("n", "<leader>qq", ":q!<CR>", { desc = "Quit without save change" })
map("n", "<leader>wq", ":wq<CR>", { desc = "Quit with save change" })
map("n", "<leader>qqa", ":qa!<CR>", { desc = "Quit all without save change" })

-- Open new terminal splits
map("n", "<leader>otj", ":belowright split | term<CR>", { desc = "Open terminal below (horizontal split)" })
map("n", "<leader>otk", ":aboveleft  split | term<CR>", { desc = "Open terminal above (horizontal split)" })
map("n", "<leader>oth", ":aboveleft vsplit | term<CR>", { desc = "Open terminal left (vertical split)" })
map("n", "<leader>otl", ":belowright vspli | termt<CR>", { desc = "Open terminal right (vertical split)" })

-- Quit terminal
map("t", "<leader>tq", "<C-\\><C-N><CR>", { desc = "Quit terminal insert mode" })
map("t", "<leader>tqq", "<C-\\><C-N>:q<CR>", { desc = "Quit terminal buffer" })
