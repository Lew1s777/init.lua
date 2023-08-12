local function map(mode, lhs)
	local options = { noremap = true }
	vim.api.nvim_set_keymap(mode, lhs, "<Nop>", { noremap = true })
end
map('',	'b')		--disable b
map('',	'<c-f>')	--disable ctrl+f
