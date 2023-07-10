vim.cmd [[let &t_ut='']]							--rander bg by nvimrc
vim.g.line_hl = { 
	none = 'NONE', 
	light = 'NONE',
	dark = 'NONE',
	['break'] = '244',
	space = 238 
}

vim.cmd[[
    au VimEnter * hi VimLine_Dark ctermfg=245
    au VimEnter * hi VimLine_Buf_Dark ctermfg=245
    au VimEnter * hi VimLine_Other ctermfg=245
	hi Comment ctermfg=gray
	hi Identifier cterm=bold ctermfg=14 guifg=#40ffff
	hi Directory ctermfg=11
]]
