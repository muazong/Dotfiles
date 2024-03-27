local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
---@diagnostic disable-next-line: undefined-field
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ -- NOTE: NO CONFIGURATION REQUIRED
		{ "brenoprata10/nvim-highlight-colors", lazy = false, opts = {} }, -- Highlight color
		{ "MunifTanjim/nui.nvim", event = "VimEnter" }, -- Vim UI
		{ "ethanholz/nvim-lastplace", lazy = false, opts = {} }, -- Back to where you exited
		{ "numToStr/Comment.nvim", lazy = false, opts = {} }, -- Quick comment
		{ "folke/todo-comments.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} }, -- Todo comment
		{ "kylechui/nvim-surround", version = "*", event = "VeryLazy", opts = {} }, -- Surround
		{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} }, -- Auto pairs
		{
			"AndrewRadev/tagalong.vim", -- Auto rename tag
			ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript" },
		},
		{
			"axelvc/template-string.nvim", -- Template string
			ft = { "js", "jsx", "javascript", "ts", "tsx", "typescript" },
			opts = {},
		},
		{
			"windwp/nvim-ts-autotag", -- Auto close tag
			ft = { "xml", "html", "js", "jsx", "javascript", "ts", "tsx", "typscript" },
			opts = {},
		},
		{ "nvim-lua/plenary.nvim", event = "VimEnter" }, -- Useful library
		{ "echasnovski/mini.nvim", event = "VimEnter", version = "*" }, -- Useful Mini library
	},
	{ -- NOTE: CONFIGURATION REQUIREMENTS
		{ "rebelot/kanagawa.nvim", lazy = false, priority = 1000 }, -- Colorschemelazy
		{ "rmagatti/alternate-toggler", event = "VeryLazy" }, -- Toggling alternate 'boolean' values
		{
			"echasnovski/mini.indentscope", -- Indent scope
			version = "*",
			{ "echasnovski/mini.animate", version = "*" }, -- Cursor animate
		},
		{ "nvim-tree/nvim-web-devicons", lazy = false }, -- File icons
		{
			{ -- Vim UI
				"smjonas/inc-rename.nvim", -- Vim Input UI
				"stevearc/dressing.nvim",
			},
		},
		{
			"nvim-treesitter/nvim-treesitter", -- Syntax highlight
			lazy = false,
			event = { "BufReadPre", "BufNewFile" },
			build = ":TSUpdate",
		},
		{ "nvim-focus/focus.nvim", event = "VimEnter", version = "*" }, -- Focus window
		{
			{ "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- Fuzzy finder
			{ "nvim-telescope/telescope-file-browser.nvim" }, -- File browser
			{
				"MattesGroeger/vim-bookmarks", -- Bookmarks
				dependencies = {
					"tom-anders/telescope-vim-bookmarks.nvim",
				},
			},
		},
		{ "nvim-neo-tree/neo-tree.nvim", lazy = false }, -- Tree files
		{ "akinsho/bufferline.nvim", lazy = false, version = "*" }, -- Tab line
		{ "b0o/incline.nvim", lazy = false }, -- Floating statuslines
		{ "nvim-lualine/lualine.nvim", lazy = false }, -- Status line
		{ "folke/noice.nvim", event = "VeryLazy" }, -- Command line UI
		{ -- Git
			{ "lewis6991/gitsigns.nvim", event = { "BufReadPre", "BufNewFile" } },
			{ "tpope/vim-fugitive", event = { "BufReadPre", "BufNewFile" } },
		},
		{ "akinsho/toggleterm.nvim", version = "*" }, -- Floatterm
		{ -- Preview Markdown file
			{
				"toppair/peek.nvim", -- Markdown
				event = { "VeryLazy" },
				ft = { "md", "markdown" },
				build = "deno task --quiet build:fast",
			},
			{
				"Zeioth/markmap.nvim", -- Markmap
				ft = { "md", "markdown" },
				build = "yarn global add markmap-cli",
				cmd = { "MarkmapOpen", "MarkmapSave", "MarkmapWatch", "MarkmapWatchStop" },
			},
		},
		{ -- File setup
			"LunarVim/bigfile.nvim",
			event = "BufReadPre",
		},
		{
			"mbbill/undotree",
			event = "BufReadPre",
		},
	},
	{ -- NOTE: AUTOCOMPLETION
		{ -- Configuring lsp servers
			"neovim/nvim-lspconfig",
			lazy = false,
			priority = 1000,
		},
		{ -- Auto complete
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
			dependencies = {
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-nvim-lsp-signature-help",
				{ -- Snippets
					"L3MON4D3/LuaSnip",
					"saadparwaiz1/cmp_luasnip",
					"rafamadriz/friendly-snippets",
				},
				"onsails/lspkind.nvim", -- VS-Code icons
				"glepnir/lspsaga.nvim", -- For UI
			},
		},
		{ -- Managing & installing lsp servers, linters & formatters
			"williamboman/mason.nvim",
			dependencies = {
				"williamboman/mason-lspconfig.nvim",
			},
		},
		{ -- Typescript/Javascript lsp
			"jose-elias-alvarez/typescript.nvim",
			ft = { "js", "jsx", "ts", "tsx", "javascript", "typescript" },
		},
		{ -- Formatting & linting
			{
				"nvimtools/none-ls.nvim",
				lazy = true,
			},
			"jayp0521/mason-null-ls.nvim",
		},
	},
})
