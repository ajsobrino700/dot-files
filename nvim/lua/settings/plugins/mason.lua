local M = {}

function M.setup()
	require("mason").setup()

	require("mason-lspconfig").setup({
		ensure_installed = {
			-- python
			"pyright",
      -- mypy
      -- debugpy

			-- lua
			"lua_ls",

      -- css-lsp

      -- Rust
      "rust_analyzer",
      "ast_grep",

      -- Typescript
      "tsserver",
      -- prettier
      -- Docker
      "docker_compose_language_service",
      "dockerls"
		},
	})
end

return M
