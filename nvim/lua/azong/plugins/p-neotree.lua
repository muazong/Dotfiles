return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = { { "<leader>ff", "<cmd>Neotree toggle source=filesystem reveal=true position=left<CR>" } },
  config = function()
    require("neo-tree").setup({
      enable_git_status = true,
      enable_diagnostics = true,
      close_if_last_window = false,
      sort_case_insensitive = true,
      popup_border_style = "rounded",
      sort_function = nil,
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
      source_selector = {
        winbar = true,
        statusline = false,
      },
      default_component_configs = {
        diagnostics = {
          symbols = {
            hint = "",
            info = "󰋼",
            warn = "",
            error = "󰃤",
          },
          highlights = {
            hint = "DiagnosticSignHint",
            info = "DiagnosticSignInfo",
            warn = "DiagnosticSignWarn",
            error = "DiagnosticSignError",
          },
        },
        container = {
          enable_character_fade = true,
        },
        indent = {
          padding = 0,
          indent_size = 2,
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",
          with_expanders = true,
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "DiagnosticSignHint",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          default = "",
          highlight = "NeoTreeFileIcon",
        },
        modified = {
          symbol = "",
          highlight = "NeoTreeModified",
        },
        name = {
          trailing_slash = true,
          use_git_status_colors = true,
          highlight = "NeoTreeFileName",
        },
        git_status = {
          symbols = {
            added = "✚",
            modified = "",
            deleted = "",
            renamed = "󰁕",

            untracked = "★",
            ignored = "◌",
            unstaged = "✗",
            staged = "✓",
            conflict = "",
          },
        },
      },
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_hidden = true,
        },
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        group_empty_dirs = false,
        hijack_netrw_behavior = "open_default",
        use_libuv_file_watcher = false,
        window = {
          mappings = {
            ["H"] = "toggle_hidden",
            ["f"] = "filter_on_submit",
          },
        },
      },
      buffers = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        group_empty_dirs = true,
        show_unloaded = true,
      },
      window = {
        position = "left",
        width = 28,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          -- Toggle keys
          ["<Tab>"] = { "toggle_node", nowait = true },
          ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },

          -- Split keys
          ["s"] = "open_split",
          ["v"] = "open_vsplit",

          -- Open keys
          ["<CR>"] = "open",
          ["w"] = "open",

          -- Close keys
          ["C"] = "close_node",
          ["z"] = "close_all_nodes",
          ["q"] = "close_window",

          -- Cancel keys
          ["<ESC>"] = "cancel",
          ["<C-c>"] = "cancel",

          -- Add
          ["a"] = { "add", config = { show_path = "relative" } }, -- "none", "relative", "absolute"

          -- move
          ["m"] = { "move", config = { show_path = "relative" } },

          -- Delete
          ["d"] = "delete",

          -- Rename
          ["r"] = "rename",

          -- Help
          ["?"] = "show_help",

          -- Move
          ["<C-p>"] = "prev_source",
          ["<C-n>"] = "next_source",

          -- Show details
          ["K"] = "show_file_details",
        },
      },
    })
  end,
}
