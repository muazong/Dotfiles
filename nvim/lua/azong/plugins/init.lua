return {
  "nvim-lua/plenary.nvim",
  "echasnovski/mini.nvim",
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
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
    -- config = function()
    --   vim.cmd([[inoremap <silent> <c-c> <c-c>:call tagalong#Apply()<cr>]])
    -- end,
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
  {
    "tpope/vim-fugitive",
    event = { "BufReadPre", "BufNewFile" },
  },
}
