local lspconfig = require("lspconfig")

local M = {}

require("neodev").setup()

local on_attach = function(_, bufnr)
  vim.key.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
end

function M.setup()
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      telemetry = { enable = false },
      workspace = { checkThirdParty = false },
    },
  },
})

lspconfig.pyright.setup({
  python = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "openFilesOnly",
      useLibraryCodeForTypes = true,
    },
  },
})
end

return M
