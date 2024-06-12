return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"markdown",
			"python",
			"hcl",
			"vimdoc",
			"html",
			"css",
      "typescript",
      "javascript"
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
