return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = { theme = "gruvbox_light" },
		})
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
