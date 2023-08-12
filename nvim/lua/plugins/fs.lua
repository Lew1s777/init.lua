return{
	{
		"nvim-neo-tree/neo-tree.nvim",
		command = Neotree,
		branch = "v3.x",
		event = "VeryLazy",
		Lazy = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config=function()
			vim.fn.sign_define("DiagnosticSignError",
				{text = " ", texthl = "DiagnosticSignError"})
			vim.fn.sign_define("DiagnosticSignWarn",
				{text = " ", texthl = "DiagnosticSignWarn"})
			vim.fn.sign_define("DiagnosticSignInfo",
				{text = " ", texthl = "DiagnosticSignInfo"})
			vim.fn.sign_define("DiagnosticSignHint",
				{text = "󰌵", texthl = "DiagnosticSignHint"})
			require("neo-tree").setup({
				close_if_last_window = false,
				enable_git_status = true,
				enable_diagnostics = true,
				enable_normal_mode_for_inputs = false,
				open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
				sort_case_insensitive = false,
				sort_function = nil ,
				default_component_configs = {
					container = { enable_character_fade = false },
					indent = {
						indent_size = 2,
						padding = 1,
						with_markers = true,
						indent_marker = "│",
						last_indent_marker = "└",
						highlight = "NeoTreeIndentMarker",
						with_expanders = nil,
						expander_collapsed = "",
						expander_expanded = "",
						expander_highlight = "NeoTreeExpander",
					},
					icon = {
						folder_closed = "",
						folder_open = "",
						folder_empty = "󰜌",
						default = "*",
						highlight = "NeoTreeFileIcon"
					},
					modified = {
						symbol = "[+]",
						highlight = "NeoTreeModified",
					},
					name = {
						trailing_slash = false,
						use_git_status_colors = true,
						highlight = "NeoTreeFileName",
					},
					git_status = {
						symbols = {
							added     = "+",
							modified  = "*",
							deleted   = "✖",
							renamed   = "󰁕",
							untracked = "",
							ignored   = "",
							unstaged  = "󰄱",
							staged    = "",
							conflict  = "",
						}
					},
				},
				commands = {},
				window = {
					position = "left",
					width = 25,
					mapping_options = {
						noremap = true,
						nowait = true,
					},
					mappings = {
						["<space>"] = { "toggle_node", nowait = false, },
						["<2-LeftMouse>"] = "open",
						["<cr>"] = "open",
						["<esc>"] = "cancel",
						["l"] = "focus_preview",
						["s"] = "open_split",			-- "open_vsplit"
						["S"] = "open_split",
						["F"] = "open_tabnew",
						["touch"] = { 
							"add",
							config = {
								show_path = "none"		-- "none""relative""absolute"
							}
						},
						["mkdir"] = "add_directory",
						["<C-X>"] = "delete",
						["P"] = "rename",
						["c"] = "copy_to_clipboard",
						["x"] = "cut_to_clipboard",
						["v"] = "paste_from_clipboard",
						["C"] = "copy",
						["X"] = "move",					-- cut file
						["q"] = "close_window",
						["<F5>"] = "refresh",
						["?"] = "show_help",
						["C-P"] = "prev_source",
						["C-G"] = "next_source",
					}
				},
				nesting_rules = {},
				filesystem = {
					filtered_items = {
					visible = false,
					hide_dotfiles = true,
					hide_gitignored = true,
					hide_hidden = true,
					hide_by_name = {
					--"node_modules"
					},
					hide_by_pattern = {
						".gitignore",
						".git",
            		},
					always_show = {},
					never_show = {},
					never_show_by_pattern = {},
				},
				follow_current_file = {
					enabled = false,
					leave_dirs_open = false,
					},
					group_empty_dirs = false,
					hijack_netrw_behavior = "open_default",		-- "open_default","open_current","disabled"
					use_libuv_file_watcher = true,				--os fs change detector
					window = {
						mappings = {
							["<bs>"] = "navigate_up",
							["."] = "set_root",
							["<C-H>"] = "toggle_hidden",
							["z"] = "fuzzy_finder",
							["Z"] = "fuzzy_finder_directory",
							["[g"] = "prev_git_modified",
							["]g"] = "next_git_modified",
						},
						fuzzy_finder_mappings = {
							["<down>"] = "move_cursor_down",
							["<C-W>"] = "move_cursor_down",
							["<up>"] = "move_cursor_up",
							["<C-R>"] = "move_cursor_up",
						},
					},
					commands = {}
				},
				buffers = {
					follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
					},
					group_empty_dirs = true,
					show_unloaded = true,
					window = {
						mappings = {
						["bd"] = "buffer_delete",
						["<bs>"] = "navigate_up",
						["."] = "set_root",
						}
					},
				},
				git_status = {
					window = {
						position = "float",
						mappings = {
							["A"]  = "git_add_all",
							["gu"] = "git_unstage_file",
							["ga"] = "git_add_file",
							["gr"] = "git_revert_file",
							["gc"] = "git_commit",
							["gp"] = "git_push",
							["gP"] = "git_commit_and_push",
						}
					}
				}
			})
		end
	},
	{
		"theniceboy/joshuto.nvim",
		lazy = true,
		event = "VeryLazy",
		cmd = "Joshuto",
		keys = { "f<LEADER>" },
		config = function()
			vim.api.nvim_set_keymap("n", "f<LEADER>", ":Joshuto<CR>", { noremap = true })
		end,
	},
	{
		"ibhagwan/fzf-lua",
		lazy=true,
		event = "VeryLazy",
		keys = { "<c-f>" },
		config = function()
			local fzf = require('fzf-lua')
			vim.keymap.set('n', '<c-f>', function()
				-- fzf.live_grep_resume({ multiprocess = true, debug = true })
				fzf.grep({ search = "", fzf_opts = { ['--layout'] = 'default' } })
			end, m)
			vim.keymap.set('x', '<c-f>', function()
				-- fzf.live_grep_resume({ multiprocess = true, debug = true })
				fzf.grep_visual({ fzf_opts = { ['--layout'] = 'default' } })
			end, m)
			fzf.setup({
				global_resume = true,
				global_resume_query = true,
				winopts = {
					height     = 1,
					width      = 1,
					preview    = {
						layout = 'vertical',
						scrollbar = 'float',
					},
					fullscreen = true,
					vertical   = 'down:45%', -- up|down:size
					horizontal = 'right:60%', -- right|left:size
					hidden     = 'nohidden',
				},
				keymap = {
					builtin = {
						["<F11>"]    = "toggle-fullscreen",
						["<c-r>"]    = "toggle-preview-wrap",
						["<c-p>"]    = "toggle-preview",
						["<c-y>"]    = "preview-page-down",
						["<c-l>"]    = "preview-page-up",
						["<S-left>"] = "preview-page-reset",
					},
					fzf = {
						["esc"]        = "abort",
						["ctrl-h"]     = "unix-line-discard",
						["ctrl-k"]     = "half-page-down",
						["ctrl-b"]     = "half-page-up",
						["ctrl-n"]     = "beginning-of-line",
						["ctrl-a"]     = "end-of-line",
						["alt-a"]      = "toggle-all",
						["f3"]         = "toggle-preview-wrap",
						["f4"]         = "toggle-preview",
						["shift-down"] = "preview-page-down",
						["shift-up"]   = "preview-page-up",
						["ctrl-e"]     = "down",
						["ctrl-u"]     = "up",
					},
				},
				previewers = {
					head = {
						cmd  = "head",
						args = nil,
					},
					git_diff = {
						cmd_deleted   = "git diff --color HEAD --",
						cmd_modified  = "git diff --color HEAD",
						cmd_untracked = "git diff --color --no-index /dev/null",
						-- pager        = "delta",      -- if you have `delta` installed
					},
					man = {
						cmd = "man -c %s | col -bx",
					},
					builtin = {
						syntax         = true,   -- preview syntax highlight?
						syntax_limit_l = 0,      -- syntax limit (lines), 0=nolimit
						syntax_limit_b = 1024 * 1024, -- syntax limit (bytes), 0=nolimit
					},
				},
				files = {
					-- previewer      = "bat",          -- uncomment to override previewer
					-- (name from 'previewers' table)
					-- set to 'false' to disable
					prompt       = 'Files❯ ',
					multiprocess = true, -- run command in a separate process
					git_icons    = true, -- show git icons?
					file_icons   = true, -- show file icons?
					color_icons  = true, -- colorize file|git icons
					-- executed command priority is 'cmd' (if exists)
					-- otherwise auto-detect prioritizes `fd`:`rg`:`find`
					-- default options are controlled by 'fd|rg|find|_opts'
					-- NOTE: 'find -printf' requires GNU find
					-- cmd            = "find . -type f -printf '%P\n'",
					find_opts    = [[-type f -not -path '*/\.git/*' -printf '%P\n']],
					rg_opts      = "--color=never --files --hidden --follow -g '!.git'",
					fd_opts      = "--color=never --type f --hidden --follow --exclude .git",
				},
				buffers = {
					prompt        = 'Buffers❯ ',
					file_icons    = true, -- show file icons?
					color_icons   = true, -- colorize file|git icons
					sort_lastused = true, -- sort buffers() by last used
				},
			})
		end
	},
}
