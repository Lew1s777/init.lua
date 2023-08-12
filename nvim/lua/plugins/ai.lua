-- AI coding support

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true } , { expr = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return{

	-- github copilot,enable it as long as you bought it
	-- { 
	--	"github/copilot.vim", 
	-- 	config = "require("pack/copilot").setup()", 
	-- 	event = "InsertEnter" 
	-- }, 
	
	-- plugin below are free for community use
	{ -- more intelligent but slower
		"Exafunction/codeium.vim",
		event = "VeryLazy",
		config = function()
			vim.g.codeium_disable_bindings = 1
			map("i", "<A-a>", "codeium#Accept()",							{script = true, silent = true, nowait = true, expr = true})		--insert suggestion
			map("i", "<A-n>", "<Cmd>call codeium#CycleCompletions(1)<CR>",	{} ) -- next ~
			map("i", "<A-N>", "<Cmd>call codeium#CycleCompletions(-1)<CR>",	{} ) -- prev ~
			map("i", "<A-x>", "<Cmd>call codeium#Clear()<CR>",				{} ) -- clear current ~
			map("i", "<A-m>", "<Cmd>call codeium#Complete()<CR>",			{} ) -- manually trigger ~
			vim.cmd[[
				let g:codeium_filetypes = {
					\ "bash": v:false,
					\ "txt": v:false,
					\ "markdown": v:false,
					\ "typescript": v:true,
					\ "c": v:true,
				\ }
			]]	
		end,
	},
	-- { -- faster but only based on local files
	--  	"codota/tabnine-nvim", 
	--  	build = "./dl_binaries.sh",
	-- },
}
