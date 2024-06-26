return {
  "windwp/nvim-ts-autotag",
  ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = true, -- Auto close on trailing </
      },
      per_filetype = {
        ["html"] = {
          enable_close = false,
          enable_rename = false,
          enable_close_on_slash = false,
        },
      },
    })
  end,
}
