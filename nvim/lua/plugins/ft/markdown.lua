return {
	{	
		"iamcco/markdown-preview.nvim", 
		lazy = true,
		build = "cd app && yarn install",
		cmd = "MarkdownPreview", 
		ft = "markdown",
		config = function()
			vim.api.nvim_set_keymap("n", "M", "<Plug>MarkdownPreviewToggle", { noremap = true })
			vim.g.mkdp_markdown_css = '~/.config/nvim/colors/markdown.css'
			vim.g.mkdp_browser = 'chromium'
			-- vim.g.mkdp_browser = 'surf'
			-- vim.g.mkdp_browser = 'wyeb'
			vim.g.mkdp_page_title = 'markdown-${name}'
			vim.g.mkdp_preview_options = { hide_yaml_meta = 1, disable_filename = 1 }
			vim.g.mkdp_theme = 'dark'
			vim.g.vmt_fence_text = 'markdown-toc'
			vim.cmd[[autocmd vimenter *.md exec ":MarkdownPreview"]]
		end,
	},
	{
		"mzlogin/vim-markdown-toc",
		lazy = true,
		event = "VeryLazy",
		cmd = "GenTocGFM",
		ft = "markdown",
	},
	{
		"dhruvasagar/vim-table-mode",
		lazy = true,
		event = "VeryLazy",
		keys = { "|" },
		ft = "markdown",
		config = function()
			vim.cmd[[
				function! s:isAtStartOfLine(mapping)
					let text_before_cursor = getline('.')[0 : col('.')-1]
					let mapping_pattern = '\V' . escape(a:mapping, '\')
					let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
					return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
				endfunction
				
				inoreabbrev <expr> <bar><bar>
					\ <SID>isAtStartOfLine('\|\|') ?
					\ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
				inoreabbrev <expr> __
					\ <SID>isAtStartOfLine('__') ?
					\ '<c-o>:silent! TableModeDisable<cr>' : '__'
			]]
			vim.g.table_mode_corner = "|"
		end,
	},
}
