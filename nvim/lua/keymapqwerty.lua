--:source ~/.config/nvim/lua/keymapqwerty.lua
--I no longer use qwerty layout,so this conf is out of dated

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
-- < a   d >     Fastest:<ctrl>+<movement key>
--     s
--     v
map('', 'w', 'gk', {})
map('', 's', 'gj', {})
map('', 'a', 'h', {})
map('', 'd', 'l', {})
map('', 'W', '5gk', {})
map('', 'S', '5gj', {})
map('', 'A', 'b', {})
map('', 'D', 'w', {})
map('', '<c-a>', 'g0', {})
map('', '<c-d>', 'g$', {})

-- functions
map('', 'r', 'i', {})
map('', 'R', 'I', {})
map('', 't', 'a', {})
map('', 'T', 'A', {})
map('', 'f', 'v', {})
map('', 'F', 'V', {})
map('', '<c-f>', '<c-v>', {})
map('', 'c', 'y', {})
map('', 'C', 'Y', {})
map('', 'v', 'p', {})
map('', 'x', 'd', {})
map('', 'X', 'D', {})
map('', '<c-q>', ':q<CR>', {})
map('', 'Q', ':wq<CR>', {})
map('', '<c-s>', ':w<CR>', {})
map('', '<c-z>', 'u', {})
map('', 'z', 'f', {})
map('', 'Z', 'F', {})
map('', 'H', ':%!xxd<CR>', {})          --hex
map('', '<c-h>', ':%!xxd -r<CR>', {})
--map('', '=', 'nzz', {})
--map('', '-', 'Nzz', {})
map('', '<CR>', 'nzz', {})
map('', '"\"', ':nohlsearch<CR>', {})
map('', '<LEADER><CR>', 'gf', {})
map('', 'N', ':set nonumber<CR>:set norelativenumber<CR>', {})
map('', '<c-n>', ':set number<CR>:set relativenumber<CR>', {})

-- split screen
map('', '<LEADER>D', ':set splitright<CR>:vsplit<CR>', {})
map('', '<LEADER>A', ':set nosplitright<CR>:vsplit<CR>', {})
map('', '<LEADER>W', ':set nosplitbelow<CR>:split<CR>', {})
map('', '<LEADER>S', ':set splitbelow<CR>:split<CR>', {})
map ('', '<LEADER>d', '<C-w>l', {})
map ('', '<LEADER>w', '<C-w>k', {})
map ('', '<LEADER>a', '<C-w>h', {})
map ('', '<LEADER>s', '<C-w>j', {})
map ('', '<LEADER><c-a>', '<C-w>t<C-w>H', {})
map ('', '<LEADER><c-d>', '<C-w>t<C-w>H', {})
map ('', '<LEADER><c-w>', '<C-w>t<C-w>K', {})
map ('', '<LEADER><c-s>', '<C-w>t<C-w>K', {})
map ('', '<up>', ':res +5<CR>', {})
map ('', '<down>', ':res -5<CR>', {})
map ('', '<right>', ':vertical resize-5<CR>', {})
map ('', '<left>', ':vertical resize+5<CR>',{})

-- page
map('', 'e', ':tabe<CR>', {})
map('', '<c-r>', ':-tabnext<CR>', {})
map('', '<c-t>', ':+tabnext<CR>', {})

----disable
--map('', 'h', '<none>', {})
--map('', 'j', '<none>', {})
--map('', 'k', '<none>', {})
--map('', 'l', '<none>', {})
