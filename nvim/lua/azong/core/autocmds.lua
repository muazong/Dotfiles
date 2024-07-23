-- Treesitter Context bottom underline
vim.cmd([[
  hi TreesitterContextBottom gui=underline guisp=#E6C384
  hi TreesitterContextLineNumberBottom gui=underline guisp=#E6C384
]])

-- Under curl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Disable auto comment
vim.cmd([[
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])

-- Rebember folds
vim.cmd([[ 
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave *.* if &ft !=# 'help' | mkview | endif
    autocmd BufWinEnter *.* if &ft !=# 'help' | silent! loadview | endif
  augroup END
]])

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 200,
    })
  end,
})

-- Resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    local current_tab = vim.fn.tabpagenr()
    vim.cmd("tabdo wincmd =")
    vim.cmd("tabnext " .. current_tab)
  end,
})

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})
