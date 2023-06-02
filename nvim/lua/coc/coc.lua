local function map(mode, lhs, rhs, opts)
	local options = { silent = true, noremap = true, expr = true }
		if opts then
			options = vim.tbl_extend("force", options, opts)
		end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


vim.g.coc_global_extensions = {
    'coc-db',
    'coc-css',
    'coc-docker',
--	'coc-explorer',
    'coc-flutter-tools',
--	'coc-gitignore',
--	'coc-git',
    'coc-go',
    'coc-html',
    'coc-java',
    'coc-json',
    'coc-lists',
--	'coc-lua',
--	'coc-marketplace',
    'coc-prettier',
    'coc-pyright',
	'coc-rls',							--rust
    'coc-sh',
    'coc-snippets',
    'coc-syntax',
    'coc-translator',
    'coc-tsserver',
    'coc-vimlsp',
   }

map( 'i', '<TAB>', "coc#pum#visible() ? coc#pum#next(1) : col('.') == 1 || getline('.')[col('.') - 2] =~# '\\s' ? \"\\<TAB>\" : coc#refresh()", {} )
map( 'i', '<s-tab>', "coc#pum#visible() ? coc#pum#prev(1) : \"\\<s-tab>\"", {} )
map('i', '<cr>', "coc#pum#visible() ? coc#_select_confirm() : \"\\<c-g>u\\<cr>\\<c-r>=coc#on_enter()\\<cr>\"", {})


