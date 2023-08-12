vim.cmd [[
	let &t_ut=''
	au VimEnter * hi VimLine_Dark ctermfg=245
	au VimEnter * hi VimLine_Buf_Dark ctermfg=245
	au VimEnter * hi VimLine_Other ctermfg=245
	hi Comment ctermfg=gray
	hi Identifier cterm=bold ctermfg=14 guifg=#40ffff
	hi Directory ctermfg=11
	hi string guifg=bg guibg=fg
	hi Special cterm=bold ctermfg=14 guifg=#40ffff"ctermfg=81 guifg=Cyan
	hi type ctermfg=224 guifg=Orange"ctermfg=81 guifg=Cyan
	hi keyword ctermfg=darkgreen guifg=darkgreen
	hi variable ctermfg=224 guifg=Orange
	hi spell ctermfg=yellow guifg=yellow
	hi constant ctermfg=1 guifg=Red
]]

vim.g.line_hl = { 
 	none = 'NONE', 
 	light = 'NONE',
 	dark = 'NONE',
 	['break'] = '244',
	space = 238 
}
