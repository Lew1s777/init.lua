return{
	{
		"ibhagwan/fzf-lua",
		lazy = true,
		-- event = {
		-- 	"VeryLazy",
		-- 	"CursorMoved",
		-- },
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
	{
		"ggandor/leap.nvim",
		lazy = true,
		-- event = {
		-- 	"CursorMoved",
		-- },
		keys = { "<ESC>" },
		config = function()
			local leap = require('leap')
			vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' }) -- or some grey
			-- vim.api.nvim_set_hl(0, 'LeapMatch', { fg = 'white', bold = true, nocombine = true, })
			-- Of course, specify some nicer shades instead of the default "red" and "blue".
			-- vim.api.nvim_set_hl(0, 'LeapLabelPrimary', { fg = 'red', bold = true, nocombine = true, })
			-- vim.api.nvim_set_hl(0, 'LeapLabelSecondary', { fg = 'blue', bold = true, nocombine = true, })
			-- Try it without this setting first, you might find you don't even miss it.
			leap.opts.highlight_unlabeled_phase_one_targets = true
			leap.opts.safe_labels = {}
			leap.opts.labels = { 'a', 'r', 's', 't', 'n', 'e', 'i', 'o', 'w', 'f', 'u', 'y', 'd', 'h' }
			vim.keymap.set("n", "<ESC>", function()
				local current_window = vim.fn.win_getid()
				leap.leap { target_windows = { current_window } }
			end)
		end
	},
}
