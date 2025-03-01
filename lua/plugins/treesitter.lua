return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			-- show treesitter nodes
			"nvim-treesitter/playground",
			"nvim-treesitter/nvim-treesitter-textobjects", -- enable more advanced treesitter-aware text objects
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"diff",
				"comment",
				"git_rebase",
				"gitcommit",
				"gitignore",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"json",
				"json5",
				"jsonc",
				"lua",
				"markdown",
				"markdown_inline",
				"pug",
				"ruby",
				"rust",
				"typescript",
				"vim",
				"yaml",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
			highlight = { enable = true, use_languagetree = true },
			context_commentstring = { enable = true },
			indent = { enable = true },
			rainbow = { enable = true, extended_mode = true, max_file_lines = 1000 },
			textobjects = {
				select = {
					enable = true,
					lookahead = true, -- automatically jump forward to matching textobj
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				swap = {
					enable = false,
					swap_next = { ["<leader>a"] = "@parameter.inner" },
					swap_previous = { ["<leader>A"] = "@parameter.inner" },
				},
			},
			playground = {
				enable = true,
				disable = {},
				updatetime = 25,
				persist_queries = false,
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
		},
	},
}
