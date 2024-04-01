local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local typescript = require("typescript")
local capabilities = cmp_nvim_lsp.default_capabilities()

local map = vim.keymap.set

local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }
	map("n", "gf", "<cmd>Lspsaga finder<CR>", opts) -- show definition, references
	-- map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	-- map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	-- map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	map("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	-- map("n", "<leader>D", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	map("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	map("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
	map("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts) -- see outline on right hand side

	if client.name == "tsserver" then
		map("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports
		map("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") -- organize imports
		map("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") -- remove unused variables
	end
end

lspconfig["clangd"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	offset_encoding = "utf-8",
	sync_kind = 2,
})

lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

typescript.setup({
	server = {
		capabilities = capabilities,
		on_attach = on_attach,
	},
})

lspconfig["jsonls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "json" },
})

lspconfig["typos_lsp"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["cssls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["emmet_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})

lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
