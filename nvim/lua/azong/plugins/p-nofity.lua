return {
  "rcarriga/nvim-notify",
  dependencies = {
    "folke/noice.nvim",
  },
  opts = {
    timeout = 3000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    render = "wrapped-compact",
    always_check = true,
    top_down = true,
    stages = "fade",
  },
}
