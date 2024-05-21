return {
  "nvim-lualine/lualine.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local colors = {
      sumiInk1 = "#1F1F28",
      sumiInk2 = "#2A2A37",
      oldWhite = "#C8C093",
      winterBlue = "#252535",
      fujiWhite = "#DCD7BA",
      springBlue = "#7FB4CA",
      springGreen = "#98BB6C",
      autumnYellow = "#DCA561",
      peachRed = "#FF5D62",
      waveAqua1 = "#6A9589",
    }

    local kanagawa_custom = function()
      return {
        normal = {
          a = { bg = colors.oldWhite, fg = colors.sumiInk2, gui = "boldItalic" },
          b = { bg = colors.winterBlue, fg = colors.oldWhite, gui = "bold" },
          c = { bg = colors.sumiInk1, fg = colors.fujiWhite, gui = "italic" },
        },
        insert = {
          a = { bg = colors.springGreen, fg = colors.sumiInk2, gui = "boldItalic" },
          b = { bg = colors.winterBlue, fg = colors.oldWhite, gui = "bold" },
          c = { bg = colors.sumiInk1, fg = colors.fujiWhite, gui = "italic" },
        },
        visual = {
          a = { bg = colors.peachRed, fg = colors.winterBlue, gui = "boldItalic" },
          b = { bg = colors.winterBlue, fg = colors.oldWhite, gui = "bold" },
          c = { bg = colors.sumiInk1, fg = colors.fujiWhite, gui = "italic" },
        },
        replace = {
          a = { bg = colors.springBlue, fg = colors.winterBlue, gui = "boldItalic" },
          b = { bg = colors.winterBlue, fg = colors.fujiWhite, gui = "bold" },
          c = { bg = colors.sumiInk1, fg = colors.fujiWhite, gui = "italic" },
        },
        command = {
          a = { bg = colors.autumnYellow, fg = colors.winterBlue, gui = "boldItalic" },
          b = { bg = colors.winterBlue, fg = colors.fujiWhite, gui = "bold" },
          c = { bg = colors.sumiInk1, fg = colors.fujiWhite, gui = "italic" },
        },
        inactive = {
          a = { bg = colors.waveAqua1, fg = colors.winterBlue, gui = "boldItalic" },
          b = { bg = colors.winterBlue, fg = colors.fujiWhite, gui = "bold" },
          c = { bg = colors.sumiInk1, fg = colors.fujiWhite, gui = "italic" },
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
            "diagnostics",
            sources = { "nvim_lsp" },
            symbols = { error = "󰃤 ", warn = " ", info = "󰋼 ", hint = " " },
            always_visible = false,
            update_in_insert = true,
          },
        },
        lualine_x = {
          {
            "filename",
            path = 1,
            file_status = true,
            newfile_status = true,
            symbols = { modified = "[+]", readonly = "[-]", unnamed = "[No Name]", newfile = "[New]" },
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
