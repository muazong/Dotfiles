return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    {
      "Exafunction/codeium.nvim",
      cmd = "Codeium",
      build = ":Codeium Auth",
      opts = {},
    },
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
      build = "make install_jsregexp",
    },
    {
      "saadparwaiz1/cmp_luasnip",
      dependencies = {
        "rafamadriz/friendly-snippets",
      },
    },
    "onsails/lspkind.nvim",
  },

  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")
    local defaults = require("cmp.config.default")()

    require("luasnip/loaders/from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<Tab>"] = cmp.mapping.select_next_item(),

        ["<C-l>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            return cmp.complete_common_string()
          end
          fallback()
        end, { "i", "c" }),

        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({
          -- behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ["<C-j>"] = cmp.mapping.confirm({
          select = true,
        }),
      }),
      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "luasnip", option = { show_autosnippets = true } },
        { name = "codeium" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lsp_signature_help" },
      }),
      -- configure lspkind for vs-code like icons
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
          symbol_map = { Codeium = "" },
        }),
      },
      experimental = {
        ghost_text = true,
      },
      window = {
        completion = {
          border = "rounded",
          scrolloff = 3,
          scrollbar = false,
        },
        documentation = {
          border = "rounded",
        },
      },
      sorting = defaults.sorting,
    })
  end,
}
