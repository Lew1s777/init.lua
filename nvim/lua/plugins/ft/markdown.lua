return {
	{	
		"iamcco/markdown-preview.nvim", 
		build = "cd app && yarn install",
		cmd = "MarkdownPreview", 
		ft = "markdown",
		config = function()
			vim.api.nvim_set_keymap("n", "M", "<Plug>MarkdownPreviewToggle", { noremap = true })
			vim.g.mkdp_markdown_css = '~/.config/nvim/colors/markdown.css'
			vim.g.mkdp_browser = 'chromium'
			--vim.g.mkdp_browser = 'surf'
			vim.g.mkdp_page_title = 'markdown-${name}'
			vim.g.mkdp_preview_options = { hide_yaml_meta = 1, disable_filename = 1 }
			vim.g.mkdp_theme = 'dark'
			vim.g.vmt_fence_text = 'markdown-toc'
			vim.cmd[[autocmd vimenter *.md exec ":MarkdownPreview"]]
		end,
	},
	{
		"mzlogin/vim-markdown-toc",
		cmd = "GenTocGFM",
		ft = "markdown",
	},
	{
		"dhruvasagar/vim-table-mode",
		ft = "markdown",
	},
}
