--keymap rc
--modify file below to disable map "gx" "g%"
--/usr/share/nvim/runtime/plugin/netrwPlugin.vim
--/usr/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
		if opts then
			options = vim.tbl_extend("force", options, opts)
		end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd [[let mapleader=" "]]
vim.cmd [[let mapscript=","]]

------------- cursor movement ---------------
--	   ^		 ^		both arws and neio are movement key
--	   w		 i		Slow:<movement key>
-- < a	 s > < n   o >	Fast:<Shift>+<movement key>
--	   r		 e		Fastest:<ctrl>+<movement key>
--	   v		 v
map('', 'w', 'gk', {})
map('', 'r', 'gj', {})
map('', 'a', 'h', {})
map('', 's', 'l', {})
map('', 'W', '5gk', {})
map('', 'R', '5gj', {})
map('', 'A', 'b', {})
map('', 'S', 'w', {})
map('', '<c-a>', 'g0', {})
map('', '<c-s>', 'g$', {})

map('', 'i', 'gk', {})
map('', 'e', 'gj', {})
map('', 'n', 'h', {})
map('', 'o', 'l', {})
map('', 'I', '5gk', {})
map('', 'E', '5gj', {})
map('', 'N', 'b', {})
map('', 'O', 'w', {})
map('', '<c-n>', 'g0', {})
map('', '<c-o>', 'g$', {})

------------- functions ----------------------
map('', 'd0', 'g0', {})												--jump
map('', 'd$', 'g$', {})
map('', 'D', 'G', {})
map('', 'dd', 'gg', {})
map('', 'p', 'i', {})												--insert
map('', 'P', 'I', {})
map('', 'g', 'a', {})
map('', 'G', 'A', {})
map('', 't', 'v', {})												--visual/select
map('', 'T', 'V', {})
map('', '<c-t>', '<c-v>', {})
map('', 'c', 'y', {})												--copy
map('', 'C', 'Y', {})
map('', 'v', 'p', {})												--paste
map('', 'x', 'd', {})												--cut/delete
map('', '<c-q>', ':q<CR>', {})										--quit
map('', 'Q', ':wq<CR>', {})											--save&&quit
map('', '<c-w>', ':w<CR>', {})										--save
map('', '<c-z>', 'u', {})											--undo
map('', 'z', 'f', {})												--find
map('', 'Z', 'F', {})
--map('', 'H', ':%!xxd<CR>', {})									--hex
--map('', '<c-h>', ':%!xxd -r<CR>', {})
map('', '<CR>', 'nzz', {})											--next result
map('', '<S-CR>', 'Nzz', {})
--map('', '<LEADER><CR>', ':nohlsearch<CR>', {})
map('', '<LEADER><CR>', 'gf', {})
map('', '?', ':%s/old/new/gc', {})									--replace
map('', 'K', ':set nonumber<CR>:set norelativenumber<CR>', {})		--line number
map('', '<c-k>', ':set number<CR>:set relativenumber<CR>', {})
map('', '-', '<c-x>', {})											--number
map('', '=', '<c-a>', {})
map('', '<c-f>', ':setfiletype ', {})								--set filetype

map('', 'F', ':tabe<CR>', {})										-- page
map('', '<c-p>', ':-tabnext<CR>', {})
map('', '<c-g>', ':+tabnext<CR>', {})
map('', '<LEADER>S', ':set splitright<CR>:vsplit<CR>', {})			-- split
map('', '<LEADER>A', ':set nosplitright<CR>:vsplit<CR>', {})
map('', '<LEADER>W', ':set nosplitbelow<CR>:split<CR>', {})
map('', '<LEADER>R', ':set splitbelow<CR>:split<CR>', {})
map ('', '<LEADER>s', '<C-w>l', {})									--focus client
map ('', '<LEADER>w', '<C-w>k', {})
map ('', '<LEADER>a', '<C-w>h', {})
map ('', '<LEADER>r', '<C-w>j', {})
map ('', '<LEADER><c-a>', '<C-w>t<C-w>H', {})						--incnmaster
map ('', '<LEADER><c-s>', '<C-w>t<C-w>H', {})
map ('', '<LEADER><c-w>', '<C-w>t<C-w>K', {})
map ('', '<LEADER><c-r>', '<C-w>t<C-w>K', {})
map ('', '<down>', ':res +5<CR>', {})								--move cutline
map ('', '<up>', ':res -5<CR>', {})
map ('', '<right>', ':vertical resize-5<CR>', {})
map ('', '<left>', ':vertical resize+5<CR>',{})

--call other app(nvim plugin required)
map ('', 'f', ':Joshuto<CR>',{})
map ('', '<leader>dd', ':LazyGit<CR>',{})

--copy && paste with system clipboard								--currently not finished
map('', '<c-c>', '+y', {})											--copy
map('', '<c-v>', '+p', {})											--paste

----disable
--map('', 'h', '<none>', {})
--map('', 'j', '<none>', {})
--map('', 'k', '<none>', {})
--map('', 'l', '<none>', {})

--plan
--<c-r> ?
