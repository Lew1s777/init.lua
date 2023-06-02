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

-- keymap
------------- cursor movement ---------------
--     ^         Slow:<movement key>
--     w         Fast:<Shift>+<movement key>
-- < a   s >     Fastest:<ctrl>+<movement key>
--     r
--     v
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

-- functions
map('', 'd0', 'g0', {})
map('', 'd$', 'g$', {})
map('', 'D', 'G', {})
map('', 'dd', 'gg', {})
map('', 'p', 'i', {})
map('', 'P', 'I', {})
map('', 'g', 'a', {})
map('', 'G', 'A', {})
map('', 't', 'v', {})
map('', 'T', 'V', {})
map('', '<c-t>', '<c-v>', {})
map('', 'c', 'y', {})
map('', 'C', 'Y', {})
map('', 'v', 'p', {})
map('', 'x', 'd', {})
map('', 'X', 'D', {})
map('', '<c-q>', ':q<CR>', {})
map('', 'Q', ':wq<CR>', {})
map('', '<c-w>', ':w<CR>', {})
map('', '<c-z>', 'u', {})
map('', 'z', 'f', {})
map('', 'Z', 'F', {})
map('', 'H', ':%!xxd<CR>', {})          --hex
map('', '<c-h>', ':%!xxd -r<CR>', {})
--map('', '=', 'nzz', {})
--map('', '-', 'Nzz', {})
map('', '<CR>', 'nzz', {})
--map('', '<LEADER><CR>', ':nohlsearch<CR>', {})
map('', '<LEADER><CR>', 'gf', {})
map('', 'K', ':set nonumber<CR>:set norelativenumber<CR>', {})
map('', '<c-k>', ':set number<CR>:set relativenumber<CR>', {})

-- split screen
map('', '<LEADER>S', ':set splitright<CR>:vsplit<CR>', {})
map('', '<LEADER>A', ':set nosplitright<CR>:vsplit<CR>', {})
map('', '<LEADER>W', ':set nosplitbelow<CR>:split<CR>', {})
map('', '<LEADER>R', ':set splitbelow<CR>:split<CR>', {})
map ('', '<LEADER>s', '<C-w>l', {})
map ('', '<LEADER>w', '<C-w>k', {})
map ('', '<LEADER>a', '<C-w>h', {})
map ('', '<LEADER>r', '<C-w>j', {})
map ('', '<LEADER><c-a>', '<C-w>t<C-w>H', {})
map ('', '<LEADER><c-s>', '<C-w>t<C-w>H', {})
map ('', '<LEADER><c-w>', '<C-w>t<C-w>K', {})
map ('', '<LEADER><c-r>', '<C-w>t<C-w>K', {})
map ('', '<down>', ':res +5<CR>', {})
map ('', '<up>', ':res -5<CR>', {})
map ('', '<right>', ':vertical resize-5<CR>', {})
map ('', '<left>', ':vertical resize+5<CR>',{})

-- page
map('', 'F', ':tabe<CR>', {})
map('', '<c-p>', ':-tabnext<CR>', {})
map('', '<c-g>', ':+tabnext<CR>', {})

----disable
--map('', 'h', '<none>', {})
--map('', 'j', '<none>', {})
--map('', 'k', '<none>', {})
--map('', 'l', '<none>', {})


map('', 'l', 'u', {})
map('', 'L', 'U', {})

map ('', 'f', ':Joshuto<CR>',{})

--plan
--<c-r> ?
