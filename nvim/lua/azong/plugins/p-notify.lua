return {
  "rcarriga/nvim-notify",
  enabled = false,
  dependencies = {
    "folke/noice.nvim",
  },
  opts = {
    timeout = 1000,
    fps = 60,
    level = 2,
    render = "wrapped-compact",
    always_check = true,
    top_down = true,
    stages = "fade_in_slide_out",
    time_formats = {
      notification = "%T",
      notification_history = "%FT%T",
    },
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
  },
}
