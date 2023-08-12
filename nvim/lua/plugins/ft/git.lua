return{	
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		event = {
			"VeryLazy",
		},
		cmd = "LazyGit",
		keys = { "<LEADER>lg" },
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<CR>", { noremap = true })
		end,
	},
}
