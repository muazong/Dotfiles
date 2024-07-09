return {
  "mbbill/undotree",
  event = { "BufReadPost", "BufNewFile" },
  keys = {
    { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undo Tree" },
  },
}
