vim.opt.termguicolors = true
require("config.lazy")
require("colorizer").setup()
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
