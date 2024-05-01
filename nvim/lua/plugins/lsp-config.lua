return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"folke/neodev.nvim",
	},
	event = "VeryLazy",
	main = "settings.plugins.lsp-config",
	config = true,
}
