return {
	{	
		"Lew1s777/nvim-lines.lua",
		lazy = false,
	},
	
	{
		"shellRaining/hlchunk.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		init = function()
			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { pattern = "*", command = "EnableHL", })
			require('hlchunk').setup({
				chunk = {
					enable = true,
					use_treesitter = true,
					style = {
						{ fg = "#806d9c" },
					},
				},
				indent = {
					chars = { "│", "¦", "┆", "┊", },
					use_treesitter = false,
				},
				blank = {
					enable = false,
				},
				line_num = {
					use_treesitter = true,
				},
			})
		end
	},
	
	{
		"Bekaboo/dropbar.nvim",
		commit = "19011d96959cd40a7173485ee54202589760caae",
		config = function()
			local api = require("dropbar.api")
			vim.keymap.set('n', '<Leader>;', api.pick)
			vim.keymap.set('n', '[c', api.goto_context_start)
			vim.keymap.set('n', ']c', api.select_next_context)

			local confirm = function()
				local menu = api.get_current_dropbar_menu()
				if not menu then
					return
				end
				local cursor = vim.api.nvim_win_get_cursor(menu.win)
				local component = menu.entries[cursor[1]]:first_clickable(cursor[2])
				if component then
					menu:click_on(component)
				end
			end

			local quit_curr = function()
			local menu = api.get_current_dropbar_menu()
			if menu then
				menu:close()
				end
			end

			require("dropbar").setup({
				menu = {
					quick_navigation = true,
					keymaps = {
						['<LeftMouse>'] = function()
							local menu = api.get_current_dropbar_menu()
								if not menu then
									return
								end
							local mouse = vim.fn.getmousepos()
								if mouse.winid ~= menu.win then
									local parent_menu = api.get_dropbar_menu(mouse.winid)
									if parent_menu and parent_menu.sub_menu then
										parent_menu.sub_menu:close()
									end
								if vim.api.nvim_win_is_valid(mouse.winid) then
									vim.api.nvim_set_current_win(mouse.winid)
								end
								return
							end
							menu:click_at({ mouse.line, mouse.column }, nil, 1, 'l')
						end,
						['<CR>'] = confirm,
						['i'] = confirm,
						['<esc>'] = quit_curr,
						['q'] = quit_curr,
						['n'] = quit_curr,
						['<MouseMove>'] = function()
							local menu = api.get_current_dropbar_menu()
							if not menu then
								return
							end
							local mouse = vim.fn.getmousepos()
							if mouse.winid ~= menu.win then
								return
							end
							menu:update_hover_hl({ mouse.line, mouse.column - 1 })
						end,
					},
				},
			})
		end
	},
	
	{
		"petertriho/nvim-scrollbar",
		dependencies={
			"kevinhwang91/nvim-hlslens",
			"lewis6991/gitsigns.nvim",
		},
		config = function()
			require("scrollbar.handlers.search").setup()
			require("scrollbar").setup({
				show = true,
				handle = {
					text = " ",
					color = "#928374",
					hide_if_all_visible = true,
				},
				marks = {
					Search = { color = "yellow" },
					Misc = { color = "purple" },
				},
				handlers = {
					cursor = false,
					diagnostic = true,
					gitsigns = true,
					handle = true,
					search = true,
				},
			})
		end,
	},

	{
		"Lew1s777/nvim-notify",
		config = function()
			vim.cmd[[
				highlight NotifyERRORBorder guifg=#8A1F1F
				highlight NotifyWARNBorder guifg=#79491D
				highlight NotifyINFOBorder guifg=#4F6752
				highlight NotifyDEBUGBorder guifg=#8B8B8B
				highlight NotifyTRACEBorder guifg=#4F3552
				highlight NotifyERRORIcon guifg=#F70067
				highlight NotifyWARNIcon guifg=#F79000
				highlight NotifyINFOIcon guifg=#A9FF68
				highlight NotifyDEBUGIcon guifg=#8B8B8B
				highlight NotifyTRACEIcon guifg=#D484FF
				highlight NotifyERRORTitle  guifg=#F70067
				highlight NotifyWARNTitle guifg=#F79000
				highlight NotifyINFOTitle guifg=#A9FF68
				highlight NotifyDEBUGTitle  guifg=#8B8B8B
				highlight NotifyTRACETitle  guifg=#D484FF
				highlight link NotifyERRORBody Normal
				highlight link NotifyWARNBody Normal
				highlight link NotifyINFOBody Normal
				highlight link NotifyDEBUGBody Normal
				highlight link NotifyTRACEBody Normal
			]]
			local notify = require("notify")
			vim.notify = notify
			notify.setup({
				background_colour = "NotifyBackground",
				fps = 30,
				level = 2,
				minimum_width = 50,
				render = "compact",
				stages = "fade",
				timeout = 5000,
				top_down = true

			})
		end,
	},
	{
		"gelguy/wilder.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local wilder = require('wilder')
			wilder.setup {
				modes = { ':' },
				next_key = '<Tab>',
				previous_key = '<S-Tab>',
			}
			wilder.set_option('renderer', wilder.popupmenu_renderer(
				wilder.popupmenu_palette_theme({
					highlights = {
						border = 'Normal', -- highlight to use for the border
					},
					left = { ' ', wilder.popupmenu_devicons() },
					right = { ' ', wilder.popupmenu_scrollbar() },
					border = 'rounded',
					max_height = '75%',  -- max height of the palette
					min_height = 0,      -- set to the same as 'max_height' for a fixed height window
					prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
					reverse = 0,         -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
				})
			))
			wilder.set_option('pipeline', {
				wilder.branch(
					wilder.cmdline_pipeline({
						language = 'vim',
						fuzzy = 1,
					}), wilder.search_pipeline()
				),
			})
		end,
	},

	{
		"yamatsum/nvim-cursorline",
		config=function()
			require('nvim-cursorline').setup {
				cursorline = {
					enable = true,
					timeout = 1000,
					number = false,
				},
				cursorword = {
					enable = true,
					min_length = 3,
					hl = { underline = true },
				}
			}
		end,
	},
	
	--{
	--	"mhinz/vim-startify",
	--	lazy = false,
	--	before = function()
	--		vim.g.startify_enable_special		= 1
	--		vim.g.startify_files_number			= 4
	--		vim.g.startify_relative_path		= 1
	--		vim.g.startify_change_to_dir		= 0
	--		vim.g.startify_update_oldfiles		= 0
	--		vim.g.startify_session_autoload		= 0
	--		vim.g.startify_session_persistence	= 0
	--		vim.g.startify_skiplist = {
	--			"COMMIT_EDITMSG",
	--			"bundle/.*/doc",
	--			"/media/data/usrdir/picture/misc",
	--			"/src/ct/*",
	--		}
	--		vim.cmd[[
	--			if has('nvim')
	--				autocmd TabNewEntered * Startify
	--			else
	--				autocmd BufWinEnter *
	--					\ if !exists('t:startify_new_tab')
	--					\     && empty(expand('%'))
	--					\     && empty(&l:buftype)
	--					\     && &l:modifiable |
	--					\   let t:startify_new_tab = 1 |
	--					\   Startify |
	--					\ endif
	--			endif
	--			let g:startify_bookmarks = [
	--				\ { 'p': '~/.config/nvim/init.lua' },
	--				\ { 'c': '~/.config/nvim/lua/plugins.lua' },
	--				\ { 'v': '~/.config/nvim/lua/localconf.lua' },
	--				\ { 't': '~/.config/nvim/lua/keymap.lua' },
	--				\ ]
	--			let g:startify_custom_header =
	--				\ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')
	--			hi StartifyBracket ctermfg=240
	--			hi StartifyFile    ctermfg=147
	--			hi StartifyFooter  ctermfg=240
	--			hi StartifyHeader  ctermfg=114
	--			hi StartifyNumber  ctermfg=215
	--			hi StartifyPath    ctermfg=245
	--			hi StartifySlash   ctermfg=240
	--			hi StartifySpecial ctermfg=240
	--		]]
	--	end
	--},
}
