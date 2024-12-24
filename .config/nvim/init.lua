vim.opt.termguicolors = true
require("config.lazy")
require('lspconfig').jdtls.setup({})
require('lualine').setup()
require("colorizer").setup()
require("config.keymap")
