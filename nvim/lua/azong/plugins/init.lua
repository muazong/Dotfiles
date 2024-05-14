return {
  "nvim-lua/plenary.nvim",
  "echasnovski/mini.nvim",
  {
    "MunifTanjim/nui.nvim",
    event = "VimEnter",
  },
  {
    "AndrewRadev/tagalong.vim",
    ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript" },
  },
  {
    "alvan/vim-closetag",
    ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript" },
  },
  {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
    "axelvc/template-string.nvim",
    ft = { "js", "jsx", "javascript", "ts", "tsx", "typescript" },
    config = true,
  },
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
    "mbbill/undotree",
    event = "BufReadPre",
    keys = { { "<leader>u", "<cmd>UndotreeToggle<CR>" } },
  },
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>m", "<cmd>MaximizerToggle<CR>" },
    },
  },
}
