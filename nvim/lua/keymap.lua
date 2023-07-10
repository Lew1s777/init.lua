--keymap rc
--modify file below to change map "gx" "g%"
--/usr/share/nvim/runtime/plugin/netrwPlugin.vim
--/usr/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
vim.g.scriptleader = ","
------------- cursor movement ---------------
--	   ^		 ^		both arws and neio are movement key
--	   w		 i		Slow:<movement key>
-- < a	 s > < n   o >	Fast:<Shift>+<movement key>
--	   r		 e		Fastest:<ctrl>+<movement key>
--	   v		 v
map('', 'w', 'gk', {})
map('', 'i', 'gk', {})
map('', 'r', 'gj', {})
map('', 'e', 'gj', {})
map('', 'a', 'h', {})
map('', 'n', 'h', {})
map('', 's', 'l', {})
map('', 'o', 'l', {})
map('', 'W', '7gk', {})
map('', 'I', '7gk', {})
map('', 'R', '7gj', {})
map('', 'E', '7gj', {})
map('', 'A', 'b', {})
map('', 'N', 'b', {})
map('', 'S', 'w', {})
map('', 'O', 'w', {})
map('', '<c-a>', 'g0', {})
map('', '<c-n>', 'g0', {})
map('', '<c-s>', 'g$', {})
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
--map('', '<LEADER>c', '+y', {})
--map('', '<LEADER>C', '+Y', {})
map('', 'v', 'p', {})												--paste
map('', 'x', 'd', {})												--cut/delete
map('', 'X', 'D', {})												--cut/delete
map('', '<c-q>', ':q<CR>', {})										--quit
map('', 'Q', ':wq<CR>', {})											--save&&quit
map('', '<c-w>', ':w<CR>', {})										--save
map('', '<c-z>', 'u', {})											--undo
map('', 'z', 'f', {})												--find
map('', 'Z', 'F', {})
map('', '<CR>', 'nzz', {})											--next result
map('', '<S-CR>', 'Nzz', {})
map('', '<LEADER><S-CR>', ':nohlsearch<CR>', {})
map('', '<LEADER><CR>', 'gf', {})
map('', '?', ':%s/old/new/gc', {})									--replace
map('', '-', '<c-x>', {})											--number--
map('', '=', '<c-a>', {})											--number++
map('', '<LEADER>c', '~', {})
map('', '<LEADER><c-f>', ':setfiletype ', {})						--set filetype

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
map ('', '<down>', ':res +7<CR>', {})								--move cutline
map ('', '<up>', ':res -3<CR>', {})
map ('', '<right>', ':vertical resize-3<CR>', {})
map ('', '<left>', ':vertical resize+7<CR>',{})

--map('', 'H', ':%!xxd<CR>', {})									--hex
--map('', '<c-h>', ':%!xxd -r<CR>', {})

--plan
--<c-r> ?
