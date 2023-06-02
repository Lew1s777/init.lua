vim.cmd[[let g:indentLine_concealcursor = 0]]
vim.o.number			= true
vim.o.relativenumber	= true
vim.o.syntax			= true
vim.o.cursorline		= true
vim.o.wrap				= true
vim.o.showcmd			= true
vim.o.wildmenu			= true
vim.cmd [[set hlsearch]]
vim.cmd [[nohlsearch]]
vim.cmd [[set incsearch]]
vim.cmd [[set ignorecase]]
vim.cmd [[set smartcase]]
vim.o.hidden			= true
vim.cmd [[filetype on]]
vim.cmd [[filetype indent on]]
vim.cmd [[filetype plugin on]]
vim.cmd [[filetype plugin indent on]]
vim.o.mouse				= n				--a=enabled
vim.o.encoding			= "utf-8"
vim.cmd [[let &t_ut='']]
vim.cmd [[set listchars=tab:▸\ ,trail:▫]]
vim.o.scrolloff			= 4
vim.o.tw				= 0
vim.o.indentexpr		= true
vim.cmd [[let backspace = 'indent,eol,start']]
vim.o.foldlevel			= indent
vim.o.autoindent		= true
vim.o.smartindent		= true
vim.o.smarttab			= true
vim.o.expandtab			= false			--true=space indent
vim.o.shiftround		= true
vim.o.tabstop			= 4
vim.o.softtabstop		= 4
vim.o.shiftwidth		= 4
vim.o.list				= false
vim.cmd[[filetype indent on]]
vim.o.foldlevel			= 99
vim.o.laststatus		= 2
vim.o.autochdir			= true
vim.cmd([[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]])
vim.o.updatetime		= 300
vim.cmd [[set shortmess+=c]]
vim.cmd('autocmd vimenter *.md exec ":MarkdownPreview"')
--vim.cmd('source ~/.config/nvim/lua/startify/startify.vim')
vim.cmd('source ~/.config/nvim/vim/startify/startify.vim')
--vim.cmd[[
--	\ sleep 1
--	\ source ~/.unmap.vim
--	\ ]]
