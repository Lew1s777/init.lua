local function map(mode, lhs, rhs, opts)
	local options = { silent = true, noremap = true, expr = true }
		if opts then
			options = vim.tbl_extend("force", options, opts)
		end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return {
	{
		"neoclide/coc.nvim",
		branch = "master",
		build = "yarn install --frozen-lockfile",
		event = { 
			"InsertEnter",
			"CmdLineEnter",
			"CursorHold" 
		},
		fn = "CocAction",
		keys = "<Plug>(coc-definition)",
		config=function()
			-- vim.opt.backup = false
			-- vim.opt.writebackup = false
			-- vim.opt.updatetime = 300
			
			vim.g.coc_global_extensions = {
				'coc-db',
				'coc-css',
				'coc-translator',		--:CocList translation
				'coc-docker',
				'coc-flutter-tools',
				-- 'coc-gitignore',
				-- 'coc-git',
				'coc-go',
				'coc-html',
				'coc-java',
				'coc-json',
				'coc-lists',
				-- 'coc-lua',
				'coc-marketplace',		--:CocList marketplace
				'coc-prettier',
				'coc-pyright',
				'coc-rls',				--rust support
				--'coc-rust-analyzer',
				'coc-sh',
				'coc-snippets',
				'coc-syntax',
				'coc-translator',
				'coc-tsserver',
				'coc-vimlsp',
			}
			
			map( "i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1) : col('.') == 1 || getline('.')[col('.') - 2] =~# '\\s' ? \"\\<TAB>\" : coc#refresh()", {} )
			map( "i", "<s-tab>", "coc#pum#visible() ? coc#pum#prev(1) : \"\\<s-tab>\"", {} )
			map( "i", "<cr>", "coc#pum#visible() ? coc#_select_confirm() : \"\\<c-g>u\\<cr>\\<c-r>=coc#on_enter()\\<cr>\"", {})
			map( "n", "<LEADER>-", "<Plug>(coc-diagnostic-prev)", {} )
			map( "n", "<LEADER>+", "<Plug>(coc-diagnostic-next)", {} )

			map( "n" , "gd", "<Plug>(coc-definition)", {} )
			map( "n" , "gy", "<Plug>(coc-type-definition)", {} )
			map( "n" , "gi", "<Plug>(coc-implementation)", {} )
			map( "n" , "gr", "<Plug>(coc-references)", {} )

			function _G.show_docs()
				local cw = vim.fn.expand('<cword>')
				if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
					vim.api.nvim_command('h ' .. cw)
				elseif vim.api.nvim_eval('coc#rpc#ready()') then
					vim.fn.CocActionAsync('doHover')
				else
					vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
				end
			end
			map( "n", "<LEADER>h", "<CMD>lua _G.show_docs()<CR>", {} )

			vim.api.nvim_create_augroup("CocGroup", {} )
			vim.api.nvim_create_autocmd("CursorHold", {
				group = "CocGroup",
				command = "silent call CocActionAsync('highlight')",
				desc = "Highlight symbol under cursor on CursorHold"
			})
			map( "n" , "<leader>rn" , "<Plug>(coc-rename)", {})

			map( "x" , "<leader>f" , "<Plug>(coc-format-selected)", {} )
			map( "n" , "<leader>f" , "<Plug>(coc-format-selected)", {} )
			
			map( "n" , "<leader>t" , "<Plug>(coc-translator-p)", {} )

		end,
	},
	{
		"folke/neodev.nvim",
		opts = {},
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		config=function()
			require("neodev").setup({
			library = {
				enabled = true,
				runtime = true,
				types = true,
				plugins = true,
			},
			setup_jsonls = true,
			override = function(root_dir, options) end,
			lspconfig = false,
			pathStrict = true,
			})
			vim.g.neodev_checkThirdParty = false
			vim.g.neodev_disable = true
			vim.g.neodev_luassert = 3
		end

	},
}
