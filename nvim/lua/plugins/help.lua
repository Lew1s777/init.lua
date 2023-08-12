local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return {
	{
		"folke/which-key.nvim",
		keys = { "<c-k>" },
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			plugins = {
				marks = true,
				registers = true,
				spelling = {
					enabled = true,
					suggestions = 20,
				},
				presets = {
					operators = true,
					motions = true,
					text_objects = true,
					windows = true,
					nav = true,
					z = true,
					g = true,
				},
			},
			operators = { gc = "Comments" },
			key_labels = { -- override keymap display label
				["<space>"] = "SPACE",
				["<cr>"] = "ENTER",
				["<tab>"] = "TAB",
			},
			motions = {
				count = true,
			},
			icons = {
				breadcrumb = "»",
				separator = "➜",
				group = "+",
			},
			popup_mappings = {
				scroll_down = "r",
				scroll_up = "w",
			},
			window = {
				border = "none",
				position = "bottom",
				margin = { 1, 0, 1, 0 },
				padding = { 1, 2, 1, 2 },
				winblend = 0,
				zindex = 1000,
			},
			layout = {
				height = { min = 4, max = 25 },
				width = { min = 20, max = 50 },
				spacing = 3,
				align = "left",
			},
			ignore_missing = false,
			hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " },
			show_help = true,
			show_keys = true,
			triggers = "auto", -- automatically setup triggers
			-- triggers = {"<leader>"} -- or specifiy a list manually
			-- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
			triggers_nowait = {
				-- marks
				"`",
				"'",
				"g`",
				"g'",
				-- registers
				'"',
				"<c-r>",
				-- spelling
				"z=",
			},
			triggers_blacklist = {
				-- list of mode / prefixes that should never be hooked by WhichKey
				i = { "r", "w" },
				v = { "r", "w" },
			},
			disable = {
				buftypes = {},
				filetypes = {},
			},
		},
		config = function()
			map("n", "<c-k>", ":WhichKey<CR>", {})
		end,
	},
	
	--"folke/neodev.nvim",
	{
		"yianwillis/vimcdoc",
		event = "VeryLazy",
		--cmd = "help",
	},
}
