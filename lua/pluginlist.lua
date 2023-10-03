return {
	-- UI 
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme kanagawa-dragon")
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("lualine").setup({
				icons_enabled = true,
				theme = "onedark",
			})
		end,
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			vim.notify = require("notify")
		end
	},
	-- LSP/CMP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"folke/neodev.nvim",
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
			'hrsh7th/cmp-nvim-lsp',
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
	},
	-- File
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
	},
	-- Git
	"lewis6991/gitsigns.nvim",
	{
		'kdheepak/lazygit.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},
	-- Editting Supports
	{
		'numToStr/Comment.nvim',
		opts = {
			toggler = {
				line = '<leader>/',
			},
		},
		lazy = false,
	},
	{
		'Pocco81/auto-save.nvim',
		config = function()
			require("auto-save").setup{}
		end,
	},
}
