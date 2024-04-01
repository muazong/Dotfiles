require("lspsaga").setup({
	lightbulb = {
		enable = false,
		sign = true,
		virtual_text = false,
	},
	symbol_in_winbar = {
		enable = true,
	},
	outline = {
		layout = "normal",
	},
	code_action = {
		show_server_name = true,
		extend_gitsigns = false,
		num_shortcut = true,
		keys = {
			quit = { "<C-c>", "q" },
			exec = "<CR>",
		},
	},
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	definition = {
		edit = "<CR>",
	},
	ui = {
		colors = {
			normal_bg = "#022746",
		},
	},
})
