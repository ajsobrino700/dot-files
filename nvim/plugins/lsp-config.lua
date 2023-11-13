return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },
  config = function()

    vim.keymap.set('n','<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n','[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n',']d', vim.diagnostic.goto_next)
    vim.keymap.set('n','<space>q', vim.diagnostic.setloclist)
      
    local on_attach = function(client, buffnr)
        vim.keymap.set('n','K',vim.lsp.buf.hover, { buffer = buffnr})
    end


	require("neodev").setup()
	require("lspconfig").lua_ls.setup({
        on_attach = on_attach,
        settings = {
            Lua = {
                telemetry = { enable = false },
                workspace = { enable = false },
            }
        }
    })
    require'lspconfig'.gopls.setup({})
  end
}
