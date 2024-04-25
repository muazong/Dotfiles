return {
  "echasnovski/mini.indentscope",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "echasnovski/mini.nvim",
  },
  opts = { symbol = "│" },
}
