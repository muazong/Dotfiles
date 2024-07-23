return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    enable = true,
    max_lines = 0,
    trim_scope = "outer",
    min_window_height = 0,
    line_numbers = true,
    multiline_threshold = 20,
    patterns = {
      default = {
        "class",
        "function",
        "method",
        "for",
        "while",
        "if",
        "switch",
        "case",
      },
    },
    zindex = 20,
    mode = "cursor",
    separator = nil,
    on_attach = nil,
  },
  config = function()
    vim.keymap.set("n", "<S-z>", function()
      require("treesitter-context").go_to_context(vim.v.count1)
    end, { silent = true })
  end,
}
