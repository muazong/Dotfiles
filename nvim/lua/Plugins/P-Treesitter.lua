require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"javascript",
		"typescript",
		"bash",
		"json",
		"cpp",
		"markdown",
		"markdown_inline",
		"regex",
		"gitignore",
	},
	sync_install = false,
	auto_install = false,
	ignore_install = { "html", "css", "tmux" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
		enable_rename = true,
		enable_close = true,
		enable_close_on_slash = true,
		filetypes = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript" },
	},
	indent = {
		enable = true,
	},
})
