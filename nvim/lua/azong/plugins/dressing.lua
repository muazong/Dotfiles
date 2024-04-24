return {
  "stevearc/dressing.nvim", lazy = false,
  opts = {
    input = {
      enabled = true,
      default_prompt = "Rename to",
      title_pos = "center",
      insert_only = true,
      start_in_insert = true,
      border = "rounded",
      relative = "cursor",

      prefer_width = 10,
      width = nil,
      max_width = { 140, 0.9 },
      min_width = { 30, 0.6 },

      buf_options = {},
      win_options = {
        wrap = false,
        list = true,
        listchars = "precedes:…,extends:…",
        sidescrolloff = 0,
      },

      mappings = {
        n = {
          ["<Esc>"] = "Close",
          ["<CR>"] = "Confirm",
        },
        i = {
          ["<C-c>"] = "Close",
          ["<CR>"] = "Confirm",
          ["<Up>"] = "HistoryPrev",
          ["<Down>"] = "HistoryNext",
        },
      },
      get_config = nil,
    },
    select = {
      enabled = true,
      backend = { "telescope" },
      trim_prompt = true,
      builtin = {
        show_numbers = true,
        border = "rounded",
        relative = "editor",

        buf_options = {},
        win_options = {
          cursorline = true,
          cursorlineopt = "both",
        },

        width = nil,
        max_width = { 140, 0.8 },
        min_width = { 40, 0.2 },
        height = nil,
        max_height = 0.9,
        min_height = { 10, 0.2 },

        mappings = {
          ["<Esc>"] = "Close",
          ["<C-c>"] = "Close",
          ["<CR>"] = "Confirm",
        },
      },
      get_config = nil,
    },
  }
}
