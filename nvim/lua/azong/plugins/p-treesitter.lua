return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "php",
        "bash",
        "json",
        "cpp",
        "markdown",
        "markdown_inline",
        "regex",
        "gitignore",
        "git_config",
        "toml",
      },
      sync_install = false,
      auto_install = true,
      ignore_install = { "html", "css", "tmux" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
