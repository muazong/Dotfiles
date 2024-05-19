return {
  --[[ "rmagatti/alternate-toggler",
  event = "BufReadPre",
  config = function()
    vim.keymap.set("n", "<Leader><Leader>", "<Cmd>ToggleAlternate<CR>")
    require("alternate-toggler").setup({
      alternates = {
        ["==="] = "!==",
        ["=="] = "!=",
        ["yes"] = "no",
        ["on"] = "off",
        ["1"] = "0",
      },
    })
  end, ]]
}
