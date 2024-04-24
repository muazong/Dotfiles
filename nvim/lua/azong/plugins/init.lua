return {
  -- Useful libraries
  {
    "nvim-lua/plenary.nvim",
    "echasnovski/mini.nvim",
    version = "*",
  },
  {
    "AndrewRadev/tagalong.vim", -- Auto rename tag
    ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript" },
  },
  "MunifTanjim/nui.nvim",
  event = "VimEnter", -- VIM UI
  "ethanholz/nvim-lastplace",
  lazy = false, -- Back where you exited
}
