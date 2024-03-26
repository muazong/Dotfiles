require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"lua_ls",
		"emmet_ls",
		"jsonls",
		"typos_lsp",
	},
	automatic_installation = true,
})

require("mason-null-ls").setup({
	ensure_installed = {
		"prettier", -- ts/js formatter
		"prettierd", -- ts/js formatter
		"stylua", -- lua formatter
	},
	automatic_installation = true,
})
