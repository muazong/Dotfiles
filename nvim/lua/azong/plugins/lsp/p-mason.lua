return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jayp0521/mason-null-ls.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_null_ls = require("mason-null-ls")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "lua_ls",
        "emmet_language_server",
        "typos_lsp",
        "clangd",
      },
    })

    mason_null_ls.setup({
      ensure_installed = {
        "prettier",
        "prettierd",
        "stylua",
      },
    })
  end,
}
