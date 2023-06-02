"quote
"let g:startify_custom_header = []

"run for each new tab
if has('nvim')
	autocmd TabNewEntered * Startify
else
	autocmd BufWinEnter *
		\ if !exists('t:startify_new_tab')
		\     && empty(expand('%'))
		\     && empty(&l:buftype)
		\     && &l:modifiable |
		\   let t:startify_new_tab = 1 |
		\   Startify |
		\ endif
endif
    
let g:startify_enable_special		= 1
let g:startify_files_number			= 4
let g:startify_relative_path		= 1
let g:startify_change_to_dir		= 0
let g:startify_update_oldfiles		= 0
let g:startify_session_autoload		= 0
let g:startify_session_persistence	= 0

let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'bundle/.*/doc',
		\ '/media/data/usrdir/picture/misc',
		\ '/src/ct/*',
        \ ]

let g:startify_bookmarks = [
    \ { 'p': '~/.config/nvim/init.lua' },
    \ { 'c': '~/.config/nvim/lua/plugins.lua' },
    \ { 'v': '~/.config/nvim/lua/localconf.lua' },
    \ { 't': '~/.config/nvim/lua/keymap.lua' },
    \ ]
    
let g:startify_custom_header =
	\ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')

"let g:startify_custom_footer =
"	\ ['', "   E=mc2.", '']
"	\ ['', "   Vim is charityware. Please read ':help uganda'.", '']

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
