local opts = vim.opt

opts.filetype = "on"

-- Shell
opts.shell = "zsh"

-- Clipboard
opts.clipboard:append("unnamedplus")

-- Confirm to save
opts.confirm = true

-- Undo setup
opts.undofile = true

-- Swap file
opts.swapfile = false

-- Backup file
opts.backup = false
opts.writebackup = false

-- Encoding of Unicode
opts.encoding = "utf-8"
vim.scriptencoding = "utf-8"

-- Color
opts.termguicolors = true
opts.background = "dark"

-- Allow cursor to move where there is no text in visual block mode
opts.virtualedit = "block"

-- Under curl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- History
opts.history = 30

-- Show match
opts.showmatch = true

-- List & title
opts.list = true
opts.title = true

-- Time set
opts.updatetime = 50
opts.timeoutlen = 800

-- Line
opts.number = true
opts.cursorline = true
opts.breakindent = true
opts.linebreak = true
opts.wrap = false

-- Sign column
opts.textwidth = 80
opts.colorcolumn = "0"
opts.signcolumn = "yes"

-- Tab & indent
opts.tabstop = 2
opts.smarttab = true
opts.smartindent = true
opts.shiftwidth = 2
opts.numberwidth = 2
opts.expandtab = true
opts.shiftround = true
opts.copyindent = true

-- Backspace
opts.backspace = "indent,eol,start"

-- Keywords
opts.iskeyword:append({ "_", "#" })

-- Scroll
opts.scrolloff = 8
opts.sidescrolloff = 8
opts.smoothscroll = true

-- Auto
opts.autoread = true
opts.autowrite = true
opts.autoindent = true

-- Spell check
opts.spell = false
opts.spelllang = "en_us"

-- Fold
opts.foldenable = false
opts.foldmethod = "indent"
opts.foldlevel = 99
opts.foldlevelstart = 99
opts.foldcolumn = "0"

-- Status
opts.cmdheight = 1
opts.showcmd = true
opts.showmode = true
opts.showtabline = 3
opts.laststatus = 3
opts.wildmode = "longest:full,full"

-- Complete options
opts.completeopt = "menuone,noinsert,noselect"

-- Search
opts.ignorecase = true
opts.infercase = true
opts.smartcase = true
opts.hlsearch = true

-- Split windows
opts.splitright = true
opts.splitbelow = true

-- Fill chars
opts.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}

-- Explorer
vim.g.netrw_liststyle = 3

-- Disable options
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

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
