local lspconfig = require("lspconfig")

local M = {}

require("neodev").setup()

local on_attach = function(_, bufnr)
  vim.key.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

function M.setup()
  ----------------- CSS ------------------------

  lspconfig.cssls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css" },
  })

  ----------------------------------------------
  ----------------- Docker ---------------------

  lspconfig.dockerls.setup({
    settings = {
      docker = {
        languageserver = {
          formatter = {
            ignoreMultilineInstructions = true,
          },
        },
      },
    },
  })

  lspconfig.docker_compose_language_service.setup({})

  ---------------------------------------
  ------------- Lua ---------------------
  lspconfig.lua_ls.setup({
    on_attach = on_attach,
    settings = {
      Lua = {
        telemetry = { enable = false },
        workspace = { checkThirdParty = false },
      },
    },
    filetypes = { "lua" },
  })

  ----------------------------------------
  ------------ MARKDOWN ------------------
  --
  lspconfig.marksman.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })

  ------------------------------
  ------------- Python -------------------

  lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "python" },
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
      },
    },
  })

  lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "rust" },
    settings = {
      ["rust-analyzer"] = {
        imports = {
          granularity = {
            group = "module",
          },
          prefix = "self",
        },
        cargo = {
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
      },
    },
  })

  lspconfig.ast_grep.setup({})
  lspconfig.tsserver.setup({
    filetypes = {
      "javascript",
      "typescript",
    },
  })
end

return M
