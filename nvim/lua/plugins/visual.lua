return {
	{ -- treesitter
		"nvim-treesitter/playground",
		{
			"nvim-treesitter/nvim-treesitter",
			lazy = false,
			priority = 1000,
			build = ":TSUpdate",
			config = function()
				require("nvim-treesitter.configs").setup({
					ensure_installed = { "query", "typescript", "dart", "java", "c", "prisma", "bash", "go", "lua", "html", "vim" },
					highlight = {
						enable = true,
						disable = {}, -- list of language that will be disabled
					},
					indent = {
						enable = false
					},
					incremental_selection = {
						enable = true,
						keymaps = {
							init_selection    = "<c-n>",
							node_incremental  = "<c-n>",
							node_decremental  = "<c-h>",
							scope_incremental = "<c-l>",
						},
					}
				})
			end
		},
		{
			"nvim-treesitter/nvim-treesitter-context",
			config = function()
				local tscontext = require('treesitter-context')
				tscontext.setup {
					enable = true,
					max_lines = 0,        -- How many lines the window should span. Values <= 0 mean no limit
					min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
					line_numbers = true,
					multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
					trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
					mode = 'cursor',      -- Line used to calculate context. Choices: 'cursor', 'topline'
					-- Separator between context and content. Should be a single character string, like '-'.
					-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
					separator = nil,
					zindex = 20, -- The Z-index of the context window
					on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
				}
				vim.keymap.set("n", "[c", function()
					tscontext.go_to_context()
				end, { silent = true })
			end
		},
	},
	{	
		"Lew1s777/nvim-lines.lua",
		event = 'VimEnter',
		before = function()
			vim.g.line_hl = { 
				none = 'NONE', 
				light = 'NONE',
				dark = 'NONE',
				['break'] = '244',
				space = 238 
			}
		end,
	},
	
	{
		"shellRaining/hlchunk.nvim",
		lazy = true,
		event = {
			"VeryLazy",
			"CursorMoved",
			"InsertEnter",
		},
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
		lazy = true,
		event = {
			"VeryLazy",
			"CursorMoved",
		},
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
		event = "VeryLazy",
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
		event = "VeryLazy",
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
		event = {
			"CmdLineEnter",
			"VeryLazy",
		},
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
						border = 'Normal',
					},
					left = { ' ', wilder.popupmenu_devicons() },
					right = { ' ', wilder.popupmenu_scrollbar() },
					border = 'rounded',
					max_height = '75%',
					min_height = 0,
					prompt_position = 'top',
					reverse = 0,
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
		event = {
			"VeryLazy",
			"CursorMoved",
		},
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
	
	{  
		"glepnir/dashboard-nvim",
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'doom',
				config = {
					week_header = { enable = true },
					-- header = {"nageyqma"},
					center = {
						{
							icon = ' ',
							desc = 'Empty file',
							key = 'E',
							action = 'enew'
						},
						{
							icon = ' ',
							icon_hl = 'Title',
							desc = 'Find file',
							desc_hl = 'String',
							key = 'F',
							key_hl = 'Number',
							action = "Joshuto",
						},
						{
							icon = ' ',
							desc = 'Nvim RC',
							key = 'C',
							action = 'edit ~/.config/nvim/init.lua'
						},
						{
							icon =' ',
							icon_hl = 'Title',
							desc = 'Coc config',
							desc_hl = 'String',
							key = 'O',
							key_hl = 'Number',
							action = 'CocConfig',
						},
						{
							icon = ' ',
							desc = 'Health check',
							key = 'H',
							action = 'checkhealth'
						},
						{
							icon =' ',
							icon_hl = 'Title',
							desc = 'Version',
							desc_hl = 'String',
							key = 'V',
							key_hl = 'Number',
							action = 'version',
						},
						{
							icon = ' ',
							desc = 'Keymap',
							key = '?',
							action = 'WhichKey'
						},
						{
							icon =' ',
							icon_hl = 'Title',
							desc = 'Lazygit',
							desc_hl = 'String',
							key = 'L',
							key_hl = 'Number',
							action = 'LazyGit',
						},
						{
							icon = ' ',
							desc = 'Time',
							key = 'T',
							action = '!date'
						},
						{
							icon =' ',
							icon_hl = 'Title',
							desc = 'Greeting',
							desc_hl = 'String',
							key = 'G',
							key_hl = 'Number',
							action = '!figlet Hello',
						},
						{
							icon = ' ',
							desc = 'Manage plugins',
							key = 'P',
							action = '!date'
						},
						{
							icon =' ',
							icon_hl = 'Title',
							desc = 'Clean plugins',
							desc_hl = 'String',
							key = '<C-C>',
							key_hl = 'Number',
							action = 'Lazy update',
						},
						{
							icon = ' ',
							desc = 'Update plugins',
							key = 'U',
							action = '!figlet HELLO'
						},
						{
							icon ='󰊳 ',
							icon_hl = 'Title',
							desc = 'Music album list',
							desc_hl = 'String',
							key = 'M',
							key_hl = 'Number',
							action = '!mpc ls',
						},
						{
							icon = '✗ ',
							desc = 'Quit',
							key = 'Q',
							action = 'quit'
						},
						{
							icon = '✗ ',
							icon_hl = 'Title',
							desc = 'Quit all',
							desc_hl = 'String',
							key = '<C-Q>',
							key_hl = 'Number',
							action = 'quitall'
						},
					},
					footer = {"Logic takes you from A to B,while imagination can take you anywhere"},
				}
			}
			--vim.cmd [[
			--	let g:dashboard_default_executive = 'telescope'
			--	autocmd FileType dashboard nnoremap <silent> <buffer> <CR> :<C-u>DashboardFindFile<CR>
			--	autocmd FileType dashboard nnoremap <silent> <buffer> q :<C-u>DashboardClose<CR>
			--]]
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}},
	},
}
