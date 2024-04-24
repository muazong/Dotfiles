return {
  "MattesGroeger/vim-bookmarks",
  dependencies = {
    "tom-anders/telescope-vim-bookmarks.nvim",
  },
  config = function()
    local map = vim.keymap.set

    vim.g.bookmark_sign = "♥"
    vim.g.bookmark_highlight_lines = 1

    map("n", "ma", "<Cmd> lua require('telescope').extensions.vim_bookmarks.all() <CR>")
    map("n", "mc", "<Cmd> lua require('telescope').extensions.vim_bookmarks.current_file() <CR>")
  end,
}
