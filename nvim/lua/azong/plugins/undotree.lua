return {
  "mbbill/undotree",
  event = "BufReadPre",
  config = function()
    vim.keymap.set("n", "<Leader>u", vim.cmd.UndotreeToggle)
  end
}
