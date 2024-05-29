return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"python",
      "hcl",
			"vimdoc",
      "html"
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
