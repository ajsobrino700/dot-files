local null_ls = require("null-ls")

local M = {}

function M.setup()
	null_ls.setup({
		sources = {
			-- lua
			null_ls.builtins.formatting.stylua,
			-- JS and TS
			null_ls.builtins.formatting.prettier,
			-- python
			null_ls.builtins.formatting.black,
			-- markdown
			null_ls.builtins.diagnostics.markdownlint,
		},
	})
end

return M
