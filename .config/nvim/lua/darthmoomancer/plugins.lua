return {
	"neanias/everforest-nvim",
	"neovim/nvim-lspconfig",
	"cohama/lexima.vim",
	{
		'nvim-telescope/telescope.nvim', 
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ "DarthMoomancer/Polydev", tag = "v1.2.2", 
		dependencies = {
			"MunifTanjim/nui.nvim"
		},
		opts = {} },
	"norcalli/nvim-colorizer.lua",
	{
		"saghen/blink.cmp",
		version = "v1.*",
		opts = {}
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = { enable = true },
				indent = { enable = true }
			})
		end
	}
}
