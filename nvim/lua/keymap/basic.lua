local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

------------- cursor movement ---------------
--	   ^		 ^		both arws and neio are movement key
--	   w		 i		Slow:<movement key>
-- < a	 s > < n   o >	Fast:<Shift>+<movement key>
--	   r		 e		Fastest:<ctrl>+<movement key>
--	   v		 v
map('', 'w',				'gk',								{})
map('', 'i',				'gk',								{})
map('', 'r', 				'gj', 								{})
map('', 'e', 				'gj', 								{})
map('', 'a', 				'h',								{})
map('', 'n', 				'h', 								{})
map('', 's', 				'l', 								{})
map('', 'o', 				'l', 								{})
map('', 'W', 				'7gk',								{})
map('', 'I', 				'7gk', 								{})
map('', 'R', 				'7gj', 								{})
map('', 'E', 				'7gj', 								{})
map('', 'A', 				'b',								{})
map('', 'N', 				'b', 								{})
map('', 'S', 				'w', 								{})
map('', 'O', 				'w', 								{})
map('', '<c-n>',			'g0',								{})
map('', '<c-a>', 			'g0', 								{})
map('', '<c-o>', 			'g$', 								{})
map('', '<c-s>',			'g$', 								{})

------------- function-----------------
map('', 'd0',				'g0',								{})	--jump
map('', 'd$',				'g$',								{})
map('', 'D',				'G',								{})
map('', 'dd',				'gg',								{})
map('', 'd=',				'z+',								{})	--move line to top
map('', 'd-',				'z-',								{})	--~buttom
map('', 'd.',				'z.',								{})	--~middle
map('', 'df',				'gf',								{})	--~middle
map('', 'p',				'i',								{})	--insert
map('', 'P', 				'I', 								{})
map('', 'g', 				'a', 								{})
map('', 'G', 				'A', 								{})
map('', 't', 				'v', 								{})	--visual/select
map('', 'T', 				'V', 								{})
map('', '<c-t>',			'<c-v>',							{})
map('', 'c',				'y',								{})	--copy
map('', 'C', 				'Y',								{})
--map('', '<LEADER>c',		'+y',								{})
--map('', '<LEADER>C',		'+Y',								{})
map('', 'v',				'p',								{})	--paste
map('', 'x', 				'd', 								{})	--cut/delete
map('', 'X', 				'D', 								{})	--cut/delete
map('', '<c-q>',			':q<CR>',							{})	--quit
--map('', '<c-q>',			'ZQ',								{})	--quit whithout save(:q!)
map('', 'Q',				'ZZ',								{})	--save&&quit
--map('', '<c-w>',				':w<CR>',							{})	--save
map('', 'z',				'f',								{})	--find
map('', 'Z',				'F',								{})
map('', '+', 				'n', 								{})	--next result
map('', '_', 				'N', 								{})	--next result
map('', '<CR>',				'nzz',								{})	--next result
map('', '<LEADER><CR>',		':nohlsearch<CR>',					{})
map('', '?',				':%s/old/new/gc',					{})	--replace
map('', '-',				'<c-x>',							{})	--number--
map('', '=',				'<c-a>',							{})	--number++
map('', '<LEADER>c',		'~',								{})
map('', '<LEADER><c-f>',	':setfiletype ',					{})	--set filetype

map('', 'F',				':tabe<CR>',						{})	-- page
map('', '<c-p>',			':-tabnext<CR>',					{})
map('', '<c-g>',			':+tabnext<CR>',					{})
map('', '<LEADER>S',		':set splitright<CR>:vsplit<CR>',	{})	-- split
map('', '<LEADER>A',		':set nosplitright<CR>:vsplit<CR>', {})
map('', '<LEADER>W', 		':set nosplitbelow<CR>:split<CR>',	{})
map('', '<LEADER>R', 		':set splitbelow<CR>:split<CR>',	{})
map ('', '<LEADER>s',		'<C-W>l',							{})	--focus client
map ('', '<LEADER>w', 		'<C-W>k', 							{})
map ('', '<LEADER>a', 		'<C-W>h', 							{})
map ('', '<LEADER>r', 		'<C-W>j', 							{})
map ('', '<LEADER><c-a>',	'<C-w>t<C-w>H',						{})	--incnmaster
map ('', '<LEADER><c-s>', 	'<C-w>t<C-w>H', 					{})
map ('', '<LEADER><c-w>', 	'<C-w>t<C-w>K', 					{})
map ('', '<LEADER><c-r>', 	'<C-w>t<C-w>K', 					{})
map ('', '<down>',			':res +3<CR>',						{}) --move cutline
map ('', '<up>',			':res -3<CR>',						{})
map ('', '<right>',			':vertical resize-3<CR>',			{})
map ('', '<left>',			':vertical resize+9<CR>',			{})

map('',	'f',				'z',								{})	--disable f
map('',	'ff',				'zf',								{})	--create fold
map('', 'fo', 				'zo', 								{})	--open fold
map('', 'fr', 				'zo', 								{})	--open fold
map('', 'fc', 				'zc', 								{})	--close fold
map('', 'fw', 				'zc', 								{})	--close fold
map('', 'f=', 				'z=', 								{})	--spell check

