return {
  "nvimtools/none-ls.nvim",
  dependencies = { "jayp0521/mason-null-ls.nvim" },
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local completion = null_ls.builtins.completion
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        -- formatting
        -- formatting.prettier,
        formatting.prettierd,
        formatting.stylua,
        formatting.clang_format,
        formatting.shfmt,

        -- linter
        diagnostics.tidy, -- html

        -- completion
        --[[ completion.spell, ]]
      },
      debug = false,
      on_attach = function(current_client, bufnr)
        if current_client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                filter = function(client)
                  return client.name == "null-ls"
                end,
                bufnr = bufnr,
              })
            end,
          })
        end
      end,
    })
  end,
}
