return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VimEnter",

  config = function()
    vim.cmd([[ 
      autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

      autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><a-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
    ]])

    vim.keymap.set("n", "<C-t>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>')
    vim.keymap.set("i", "<C-t>", '<ESC><Cmd>exe v:count1 . "ToggleTerm"<CR>')

    vim.keymap.set("n", "<A-t>", '<Cmd>exe v:count1 . "ToggleTerm"<CR>')
    vim.keymap.set("i", "<A-t>", '<ESC><Cmd>exe v:count1 . "ToggleTerm"<CR>')

    require("toggleterm").setup({
      start_in_insert = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "rounded",
        title_pos = "center",
        width = 80,
        height = 24,
        winblend = 0,
        zindex = 100,
      },
    })
  end,
}
