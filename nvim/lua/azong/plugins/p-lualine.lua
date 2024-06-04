return {
  "nvim-lualine/lualine.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "rebelot/kanagawa.nvim",
  },
  config = function()
    local kanaColors = require("kanagawa.colors").setup()
    local palette = kanaColors.palette

    local kanagawa_custom = function()
      return {
        normal = {
          a = { bg = palette.oldWhite, fg = palette.sumiInk2, gui = "boldItalic" },
          b = { bg = palette.winterBlue, fg = palette.oldWhite, gui = "bold" },
          c = { bg = palette.sumiInk1, fg = palette.fujiWhite, gui = "italic" },
        },
        insert = {
          a = { bg = palette.springGreen, fg = palette.sumiInk2, gui = "boldItalic" },
          b = { bg = palette.winterBlue, fg = palette.oldWhite, gui = "bold" },
          c = { bg = palette.sumiInk1, fg = palette.fujiWhite, gui = "italic" },
        },
        visual = {
          a = { bg = palette.peachRed, fg = palette.winterBlue, gui = "boldItalic" },
          b = { bg = palette.winterBlue, fg = palette.oldWhite, gui = "bold" },
          c = { bg = palette.sumiInk1, fg = palette.fujiWhite, gui = "italic" },
        },
        replace = {
          a = { bg = palette.springBlue, fg = palette.winterBlue, gui = "boldItalic" },
          b = { bg = palette.winterBlue, fg = palette.fujiWhite, gui = "bold" },
          c = { bg = palette.sumiInk1, fg = palette.fujiWhite, gui = "italic" },
        },
        command = {
          a = { bg = palette.autumnYellow, fg = palette.winterBlue, gui = "boldItalic" },
          b = { bg = palette.winterBlue, fg = palette.fujiWhite, gui = "bold" },
          c = { bg = palette.sumiInk1, fg = palette.fujiWhite, gui = "italic" },
        },
        inactive = {
          a = { bg = palette.waveAqua1, fg = palette.winterBlue, gui = "boldItalic" },
          b = { bg = palette.winterBlue, fg = palette.fujiWhite, gui = "bold" },
          c = { bg = palette.sumiInk1, fg = palette.fujiWhite, gui = "italic" },
        },
      }
    end

    require("lualine").setup({
      options = {
        theme = kanagawa_custom,
        icons_enabled = true,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 200,
          tabline = 200,
          winbar = 200,
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            separator = { left = "", right = "" },
            padding = 2,
          },
        },
        lualine_b = {
          { "branch", icon = "" },
          {
            "diff",
            symbols = { added = " ", modified = " ", removed = " " },
          },
        },
        lualine_c = {
          {
            "filename",
            path = 1,
            file_status = true,
            newfile_status = true,
            symbols = { modified = "[+]", readonly = "[-]", unnamed = "[No Name]", newfile = "[New]" },
          },
        },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            symbols = { error = "󰃤 ", warn = " ", info = "󰋼 ", hint = " " },
            always_visible = false,
            update_in_insert = true,
          },
        },
        lualine_y = {
          "filetype",
          "progress",
        },
        lualine_z = {
          {
            "location",
            separator = { left = "", right = "" },
            padding = 1,
          },
        },
      },
      extensions = {
        "fugitive",
        "mason",
        "neo-tree",
        "trouble",
        "nvim-tree",
        "toggleterm",
        "lazy",
      },
    })
  end,
}
