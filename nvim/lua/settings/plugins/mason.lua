local M = {}

function M.setup()
	require("mason").setup()

	require("mason-lspconfig").setup({
		ensure_installed = {
			-- python
			"pyright",

			-- lua
			"lua_ls",
		},
	})
end

return M
