return {
  "nguyenvukhang/nvim-toggler",
  event = "BufReadPre",
  config = function()
    vim.keymap.set("n", "<Leader><Leader>", require("nvim-toggler").toggle)
    require("nvim-toggler").setup({
      inverses = {
        ["==="] = "!==",
        ["=="] = "!=",
        ["yes"] = "no",
        ["on"] = "off",
        ["up"] = "down",
        ["top"] = "bottom",
        ["left"] = "right",
        ["1"] = "0",
        ["true"] = "false",
        [">"] = "<",
        ["}"] = "{",
        ["]"] = "[",
      },
      remove_default_keybinds = true,
      remove_default_inverses = true,
    })
  end,
}
