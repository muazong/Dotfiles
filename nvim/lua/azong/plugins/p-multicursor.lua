return {
  "brenton-leighton/multiple-cursors.nvim",
  opts = {},
  keys = {
    { "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "v", "x" } },
    { "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "v", "x" } },
    { "<C-x>", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "v", "x" } },
    { "<S-x>", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "v", "x" } },
  },
}
