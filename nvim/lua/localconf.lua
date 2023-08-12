vim.cmd [[
	filetype on
	filetype indent on
	filetype plugin on
	filetype plugin indent on
	set listchars=tab:▸\ ,trail:▫
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]

vim.o.list						= false
vim.o.updatetime				= 1000				--300/100 is recommended on PC
vim.o.hidden					= true				--required by coc
vim.g.indentLine_concealcursor	= 0
vim.o.number					= true
vim.o.relativenumber			= true
vim.o.syntax					= enable
vim.o.cursorline				= true
vim.o.wrap						= true
vim.o.showcmd					= true
vim.o.wildmenu					= true
vim.opt.mouse					= 'nvi'				--n=disabled
vim.o.hlsearch					= true				--search
vim.o.incsearch					= true
vim.o.ignorecase				= true
vim.o.smartcase					= true
vim.o.encoding					= "utf-8"
vim.o.scrolloff					= 4
vim.o.tw						= 0
vim.o.backspace					= "indent,eol,start"
vim.o.foldlevel					= indent
vim.o.autoindent				= true
vim.o.smartindent				= true
vim.o.smarttab					= true
vim.o.expandtab					= false				--true=space indent
vim.o.shiftround				= true
vim.o.tabstop					= 4
vim.o.softtabstop				= 4
vim.o.shiftwidth				= 4
vim.opt.filetype				= "on"
vim.o.foldlevel					= 99
vim.o.laststatus				= 2
vim.o.autochdir					= true
vim.opt.clipboard				= 'unnamedplus'
vim.opt.shortmess:append("c")
