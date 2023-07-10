return {
	"Eandrju/cellular-automaton.nvim",
	keys = "<leader>rr",
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter",
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>rr", "<cmd>CellularAutomaton make_it_rain<CR>")
		vim.keymap.set("n", "<leader>gg", "<cmd>CellularAutomaton game_of_life<CR>")
	end,
}
