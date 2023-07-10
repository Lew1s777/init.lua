return {
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>dd", ":LazyGit<CR>", { noremap = true })
		end,
	},
	{
		"theniceboy/joshuto.nvim",
		lazy = false,
		config = function()
			vim.api.nvim_set_keymap("n", "f", ":Joshuto<CR>", { noremap = true })
		end,
	},
	--{ "github/copilot.vim", config = "require('pack/copilot').setup()", event = "InsertEnter" },
}
