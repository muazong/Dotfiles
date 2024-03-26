-- Colors preview
require("nvim-highlight-colors").setup({
	render = "background", -- or 'foreground' or 'first_column' or 'background'
	enable_named_colors = true,
	enable_tailwind = true,
})

require("kanagawa").setup({
	compile = false,
	undercurl = true,
	commentStyle = { italic = true },
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	transparent = false,
	dimInactive = false,
	terminalColors = true,
	background = {
		dark = "wave",
		light = "lotus",
	},
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
	overrides = function(colors)
		local theme = colors.theme
		return {
			NormalFloat = { bg = "#2A2A37" },
			FloatBorder = { bg = "none" },
			FloatTitle = { bg = "none" },
			NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
			LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
			MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

			Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
			PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
			PmenuSbar = { bg = theme.ui.bg_m1 },
			PmenuThumb = { bg = theme.ui.bg_p2 },

			String = { fg = colors.palette.autumnYellow, italic = true },
			SomePluginHl = { fg = colors.theme.syn.type, bold = true },
		}
	end,
})

-- For diagnostics
local signs = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl, linehl = hl })
end

vim.diagnostic.config({
	signs = {
		text = signs.icons,
		texthl = signs.highlight,
		numhl = signs.highlight,
		linehl = signs.highlight,
	},
	virtual_text = {
		prefix = " 󰩃", -- 󰄛 | 󰩃 | ● | 󰝤
	},
	severtity_sort = true,
	update_in_insert = true,
})

-- Set colorscheme
vim.cmd("colorscheme kanagawa-wave") -- Wave | Lotus | Dragon
