vim.o.number            = true
vim.o.relativenumber    = true
vim.o.syntax            = true
vim.o.cursorline        = true
vim.o.wrap              = true
vim.o.showcmd           = true
vim.o.wildmenu          = true
vim.o.hlsearch          = true
vim.cmd [[set nohlsearch]]
vim.o.incsearch         = true
vim.o.ignorecase        = true
vim.o.smartcase         = true
--vim.cmd [[let nocompatible]]
vim.o.hidden            = true
vim.cmd [[filetype on]]
vim.cmd [[filetype indent on]]
vim.cmd [[filetype plugin on]]
vim.cmd [[filetype plugin indent on]]
--vim.o.mouse             = a
vim.cmd [[set encoding=utf-8]]
vim.cmd [[let &t_ut='']]
vim.o.expandtab         = true
--vim.o.tabstop           = 4
--vim.o.softtabstop       = 2
vim.o.shiftwidth        = 3
vim.o.list              = true
vim.cmd [[set listchars=tab:▸\ ,trail:▫]]
vim.o.scrolloff         = 4
vim.o.tw                = 0
vim.o.indentexpr        =
vim.cmd [[set backspace=indent,eol,start]]
vim.cmd [[set foldmethod=indent]]
vim.o.foldlevel         = 99
--vim.cmd[[let &t_SI = "\<Esc>]50;CursorShape=1\x7"]]
--vim.cmd[[let &t_SR = "\<Esc>]50;CursorShape=2\x7"]]
--vim.cmd[[let &t_EI = "\<Esc>]50;CursorShape=0\x7"]]
vim.o.laststatus        = 2
vim.o.autochdir         = true
vim.cmd([[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]])
vim.o.updatetime        = 300
vim.cmd [[set shortmess+=c]]

------Plugin configuration------
--coc
vim.cmd [[source ~/.config/nvim/plugconf/coc.vim]]
vim.cmd [[source ~/.config/nvim/plugconf/markdown-preview.vim]]
