local null_ls = require("null-ls")

local M = {}

function M.setup()
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.black,
			null_ls.builtins.formatting.prettier,
		},
	})
end

return M
