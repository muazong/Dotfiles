return {
  "echasnovski/mini.animate",
  version = false,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "echasnovski/mini.nvim" },
  config = function()
    require("mini.animate").setup({
      cursor = {
        enable = true,
      },
      scroll = {
        enable = false,
      },
      resize = {
        enable = false,
      },
      open = {
        enable = false,
      },
      close = {
        enable = false,
      },
    })
  end,
}
