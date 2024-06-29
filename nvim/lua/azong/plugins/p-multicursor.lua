return {
  "brenton-leighton/multiple-cursors.nvim",
  opts = {},
  keys = {
    { "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "v" } },
    { "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "v" } },
    { "<C-d>", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "v" } },
    { "<S-d>", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "v" } },
  },
}
