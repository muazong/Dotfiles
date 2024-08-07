return {
  "nvim-lua/plenary.nvim",
  "echasnovski/mini.nvim",
  "farmergreg/vim-lastplace",
  "stevearc/dressing.nvim",
  "MunifTanjim/nui.nvim",
  {
    "AndrewRadev/tagalong.vim",
    ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript", "javascriptreact", "typescriptreact" },
  },
  {
    "alvan/vim-closetag",
    ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript", "javascriptreact", "typescriptreact" },
  },
  {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
    "anhpt379/nvim-cursorword",
    lazy = false,
  },
}
