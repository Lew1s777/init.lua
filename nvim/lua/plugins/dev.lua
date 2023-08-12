local m = { noremap = true }
local function map(mode, lhs, rhs, opts)
	local options = { silent = true, noremap = true, expr = true }
		if opts then
			options = vim.tbl_extend("force", options, opts)
		end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return {
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		"folke/neodev.nvim",
		event = {
			"InsertEnter",
			"CmdLineEnter",
			"VeryLazy",
		},
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
	{
		"neoclide/coc.nvim",
		branch = "master",
		build = "yarn install --frozen-lockfile",
		event = { 
			"InsertEnter",
			"CmdLineEnter",
			"VeryLazy",
			-- "CursorHold",
		},
		fn = "CocAction",
		keys = "<Plug>(coc-definition)",
		config=function()
			-- vim.opt.backup = false
			-- vim.opt.writebackup = false
			
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
				-- 'coc-marketplace',		--:CocList marketplace
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

			map( "n" , "dD", "<Plug>(coc-definition)", {} )
			map( "n" , "dy", "<Plug>(coc-type-definition)", {} )
			map( "n" , "di", "<Plug>(coc-implementation)", {} )
			map( "n" , "dr", "<Plug>(coc-references)", {} )

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
			--map( "n", "<LEADER>h", "<CMD>lua _G.show_docs()<CR>", {} )

			map( "n" , "<leader>cr" , "<Plug>(coc-rename)", {})

			map( "x" , "<leader>cf" , "<Plug>(coc-format-selected)", {} )
			map( "n" , "<leader>cf" , "<Plug>(coc-format-selected)", {} )
			
			map( "n" , "<leader>t" , "<Plug>(coc-translator-p)", {} )
			map( "v" , "<leader>t" , "<Plug>(coc-translator-pv)", {} )
			-- map( "n" , "<leader>e" , "<Plug>(coc-translator-p)", {} )
			-- map( "v" , "<leader>e" , "<Plug>(coc-translator-ev)", {} )
			-- map( "n" , "<leader>r" , "<Plug>(coc-translator-r)", {} )
			-- map( "v" , "<leader>r" , "<Plug>(coc-translator-rv)", {} )
		end,
	},
	-- {
	-- 	"SirVer/ultisnips",
	-- 	event = "CursorHold",
	-- 	keys = "<TAB>",
	-- 	dependencies = {
	-- 		"honza/vim-snippets",
	-- 	},
	-- 	config = function()
	-- 		vim.g.UltiSnipsExpandTrigger = "<TAB>"
	-- 		vim.g.UltiSnipsJumpForwardTrigger = "<C-R>"
	-- 		vim.g.UltiSnipsJumpBackwardTrigger = "<C-W>"
	-- 		vim.g.UltiSnipsEditSplit="vertical"
	-- 	end
	-- },
	
	--"quangnguyen30192/cmp-nvim-ultisnips",
	{
		"mg979/vim-visual-multi",
		event = {
			"VeryLazy",
		},
		keys = "<C-D>",
		branch = "master",
		init = function()
			vim.cmd[[
				let g:VM_maps = {}
				let g:VM_maps['Find Under']         = '<C-D>'           " replace C-n
				let g:VM_maps['Find Subword Under'] = '<C-D>'           " replace visual C-n

				"let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
				"let g:VM_maps                       = {}
				"let g:VM_custom_motions             = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
				"let g:VM_maps['i']                  = 'k'
				"let g:VM_maps['I']                  = 'K'
				"let g:VM_maps['Find Next']          = '+'
				"let g:VM_maps['Find Prev']          = '_'
				"let g:VM_maps['Remove Region']      = 'q'
				"let g:VM_maps['Skip Region']        = '<LEADER><c-n>'
				"let g:VM_maps["Undo"]               = 'U'
				"let g:VM_maps["Redo"]               = '<C-r>'
				"noremap <leader>sa <Plug>(VM-Select-All)
			]]
		end
	},

}
