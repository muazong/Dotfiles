return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local telescope = require("telescope")

    local map = vim.keymap.set
    local opts = { silent = true, noremap = true }

    local actions = require("telescope.actions")
    local fb_actions = require("telescope._extensions.file_browser.actions")

    map("n", "<C-f>", "<CMD>Telescope find_files<CR>", opts)
    map("n", "<C-g>", "<CMD>Telescope live_grep<CR>", opts)
    map("n", "<C-s>", "<CMD>:Telescope grep_string<CR>", opts)
    map("n", "<C-b>", "<CMD>:Telescope file_browser<CR>", opts)
    map("n", "tb", "<CMD>:Telescope buffers<CR>", opts)
    map("n", "?", "<CMD>:Telescope help_tags<CR>", opts)

    map("n", "<A-f>", "<CMD>Telescope find_files<CR>", opts)
    map("n", "<A-g>", "<CMD>Telescope live_grep<CR>", opts)
    map("n", "<A-b>", "<CMD>:Telescope file_browser<CR>", opts)

    telescope.setup({
      -- Defaults
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        initial_mode = "normal",
        layout_config = {
          width = 0.7,
          height = 0.8,
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-o>"] = actions.select_default,
            ["<C-c>"] = actions.close,
          },
          n = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["o"] = actions.select_default,
            ["l"] = actions.select_default,
            ["<C-o>"] = actions.select_default,
            ["<C-c>"] = actions.close,
            ["q"] = actions.close,
          },
        },
      },
      -- Pickers
      pickers = {
        find_files = {
          previewer = false,
          hidden = true,
          no_ignore = true,
          no_ignore_parent = true,
          initial_mode = "insert",
        },
        live_grep = {
          grep_open_files = false,
          initial_mode = "insert",
        },
        help_tags = {
          initial_mode = "insert",
        },
        buffers = {
          previewer = false,
        },
      },
      -- Extensions
      extensions = {
        file_browser = {
          initial_mode = "normal",
          hidden = true,
          grouped = true,
          no_ignore = true,
          git_status = true,
          previewer = false,
          hijack_netrw = true,
          select_buffer = true,
          path = "%:p:h",
          dir_icon = "",
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = { prompt_position = "top" },
            width = 0.7,
            height = 0.8,
          },
          mappings = {
            ["i"] = {
              ["A"] = fb_actions.create,
            },
            ["n"] = {
              ["a"] = fb_actions.create,
              ["O"] = fb_actions.open,
              ["<C-h>"] = fb_actions.toggle_hidden,
              ["h"] = fb_actions.goto_parent_dir,
            },
          },
        },
      },
    })

    telescope.load_extension("file_browser") -- File browser
    telescope.load_extension("vim_bookmarks") -- Bookmarks
  end,
}
