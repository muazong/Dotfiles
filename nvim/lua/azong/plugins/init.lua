return {
  "nvim-lua/plenary.nvim",
  "echasnovski/mini.nvim",
  {
    "MunifTanjim/nui.nvim",
    event = "VimEnter",
  },
  {
    "stevearc/dressing.nvim",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "ziontee113/icon-picker.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "stevearc/dressing.nvim" },
    opts = {
      disable_legacy_commands = true,
    },
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
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>m", "<cmd>MaximizerToggle<CR>" },
    },
  },
  {
    "tpope/vim-fugitive",
    event = { "BufReadPre", "BufNewFile" },
  },
}
