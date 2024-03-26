vim.api.nvim_create_user_command("MDPreviewOpen", require("peek").open, {})
vim.api.nvim_create_user_command("MDPreviewClose", require("peek").close, {})

require("peek").setup({
	auto_load = true,
	close_on_bdelete = true,
	syntax = true,
	theme = "dark",
	update_on_change = true,
	app = "browser", -- 'webview' / 'browser'
	filetype = { "markdown" },
	throttle_at = 200000,
	throttle_time = "auto",
})

require("markmap").setup({
	html_output = "/tmp/markmap.html",
	hide_toolbar = false,
	grace_period = 3600000,
})
