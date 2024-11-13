return {
	{
		"zbirenbaum/copilot.lua",
		enabled = true,
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
		},
	},

	--Dash Board
	--{
	--"goolord/alpha-nvim",
	--dependencies = { "nvim-tree/nvim-web-devicons" },
	--},
	-- Auto Formatting
	--{ "nvimtools/none-ls.nvim" },

	-- Treesitter
	--{
	--"nvim-treesitter/nvim-treesitter",
	--build = ":TSUpdate",
	--event = "bufWinEnter",
	--dependencies = {
	--"JoosepAlviste/nvim-ts-context-commentstring",
	--},
	--},

	-- Vim Notification Popup
	{ "rcarriga/nvim-notify" },

	-- Commnets Plugins
	{ "numToStr/Comment.nvim" },

	-- Colorscheme
	{ "gruvbox-community/gruvbox" },
	{ "sainnhe/gruvbox-material" },

	-- For Transparency
	{ "xiyaowong/transparent.nvim" },

	-- Rainbos CSV
	{ "mechatroner/rainbow_csv" },

	-- Colorizer.lua
	{ "norcalli/nvim-colorizer.lua" },

	-- Terminal
	{ "akinsho/toggleterm.nvim" },

	-- Indent Line
	{ "lukas-reineke/indent-blankline.nvim" },

	-- GitSign Plugins
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				current_line_blame = true,
			})
		end,
	},

	-- nvim-ts-autotag
	{ "windwp/nvim-ts-autotag" },

	-- Nvim treesitter rainbow brackets
	{ "hiphish/rainbow-delimiters.nvim" },

	-- nvim autopairs
	{ "windwp/nvim-autopairs" },
	{ "kdheepak/lazygit.nvim" },
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},

	-- NeoVIMTree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Buffer Line
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	-- Lua Line
	{ "nvim-lualine/lualine.nvim" },

	-- WhichKey
	{ "folke/which-key.nvim", disabled = true },

	-- Managing Mason
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ "jay-babu/mason-null-ls.nvim" },
	{ "jay-babu/mason-nvim-dap.nvim", dependencies = { "mfussenegger/nvim-dap" } },
	{ "mattn/emmet-vim" },
	{ "tpope/vim-fugitive" },
	{ "mbbill/undotree" },
	{ "simrat39/rust-tools.nvim" },
	{ "saecki/crates.nvim" },
	{ "rust-lang/rust.vim" },
	{ "mfussenegger/nvim-dap" },
	{ "leoluz/nvim-dap-go" },
	{ "theHamsta/nvim-dap-virtual-text" },
	{ "ThePrimeagen/harpoon" },
}
