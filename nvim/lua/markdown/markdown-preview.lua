vim.api.nvim_set_keymap("n", "M", "<Plug>MarkdownPreviewToggle", { noremap = true })
vim.g.mkdp_markdown_css = '~/.config/nvim/colors/markdown.css'
vim.g.mkdp_browser = 'chromium'
--vim.g.mkdp_browser = 'surf'
vim.g.mkdp_page_title = 'nvim-${name}'
vim.g.mkdp_preview_options = { hide_yaml_meta = 1, disable_filename = 1 }
vim.g.mkdp_theme = 'dark'
vim.g.vmt_fence_text = 'markdown-toc'
