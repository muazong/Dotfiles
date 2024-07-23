return {
  "s1n7ax/nvim-search-and-replace",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-search-and-replace").setup({
      ignore = { "**/node_modules/**", "**/.git/**", "**/.gitignore", "**/.gitmodules", "build/**" },
      update_changes = false,
      replace_keymap = "<leader>gr",
      replace_all_keymap = "<leader>gR",
      replace_and_save_keymap = "<leader>gu",
      replace_all_and_save_keymap = "<leader>gU",
    })
  end,
}
